import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:milmit_vpn_macos/milmit_vpn_macos.dart';

import '../../app/app_state.dart';
import '../../app/app_strings.dart';
import '../../l10n/app_localizations.dart';
import '../../core/firetunnel_vpn_core.dart';
import '../../core/linux_platform_controls.dart';
import '../../core/mobile_vpn_bridge.dart';
import '../../core/vpn_core.dart';
import '../../core/vpn_core_providers.dart';
import '../../shared/layout/main_screen_background.dart';
import '../../shared/widgets/battery_optimization_banner.dart';
import '../../shared/widgets/harmoney_switch.dart';
import '../shared/harmoney_pro_download_card.dart';
import '../diagnostics/talker_logs_page.dart';
import '../../shared/services/haptic_service.dart';
import '../../core/windows_startup_scheduler.dart';

import 'package:milmit_vpn_client/app/localized_text.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key, required this.appState});

  final AppState appState;

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage>
    with WidgetsBindingObserver {
  final _linuxControls = LinuxPlatformControls();
  bool? _credentialsSaved;
  bool _checkingCredentials = false;
  bool _launchAtStartup = false;
  bool _alwaysOnVpn = false;
  FireTunnelAccountState? _fireTunnelAccount;
  bool _isAccountActionBusy = false;
  double _lastQuotaProgress = 1.0;

  AppState get appState => widget.appState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    appState.addListener(_onAppStateChanged);
    Future.microtask(_refreshCredentialStatus);
    if (Platform.isLinux) {
      _linuxControls.launchAtStartupEnabled().then((v) {
        if (mounted) setState(() => _launchAtStartup = v);
      });
      _linuxControls.isAlwaysOnVpnActive().then((v) {
        if (mounted) setState(() => _alwaysOnVpn = v);
      });
    } else if (Platform.isWindows) {
      WindowsStartupScheduler.isEnabled().then((v) {
        if (mounted) setState(() => _launchAtStartup = v);
      });
    } else if (Platform.isAndroid) {
      MobileVpnBridge.isAlwaysOnVpnActive().then((v) {
        if (mounted) setState(() => _alwaysOnVpn = v);
      });
      MobileVpnBridge.isLockdownActive().then((enabled) {
        if (mounted) appState.setKillSwitch(enabled);
      });
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && Platform.isAndroid) {
      MobileVpnBridge.isLockdownActive().then((enabled) {
        if (mounted && appState.killSwitch != enabled) {
          appState.setKillSwitch(enabled);
        }
      });
      MobileVpnBridge.isAlwaysOnVpnActive().then((enabled) {
        if (mounted) setState(() => _alwaysOnVpn = enabled);
      });
    }
  }

  void _onAppStateChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    appState.removeListener(_onAppStateChanged);
    super.dispose();
  }

  Future<void> _setKillSwitch(bool value) async {
    try {
      if (Platform.isAndroid) {
        await MobileVpnBridge.openVpnSettings();
        return;
      }
      await ref.read(vpnCoreProvider).setKillSwitch(value);
      await appState.setKillSwitch(value);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: LocalizedText(error.toString())));
      }
    }
  }

  Future<void> _setLaunchAtStartup(bool val) async {
    try {
      if (Platform.isLinux) {
        await _linuxControls.setLaunchAtStartup(val);
        if (mounted) setState(() => _launchAtStartup = val);
      } else if (Platform.isWindows) {
        await WindowsStartupScheduler.setEnabled(val);
        if (mounted) setState(() => _launchAtStartup = val);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: LocalizedText('Failed to update autostart: $e')),
        );
      }
    }
  }

  Future<void> _setAlwaysOnVpn(bool val) async {
    try {
      if (Platform.isLinux) {
        await _linuxControls.setAlwaysOnVpn(val);
        if (mounted) setState(() => _alwaysOnVpn = val);
      } else if (Platform.isAndroid) {
        await MobileVpnBridge.openVpnSettings();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: LocalizedText('Failed to update Always-on VPN: $e'),
          ),
        );
      }
    }
  }

  Future<void> _unjamNetwork() async {
    try {
      if (Platform.isLinux) {
        await _linuxControls.disconnectClean();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: LocalizedText(
                'Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.',
              ),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: LocalizedText('Unjam failed: $e')));
      }
    }
  }

  Future<void> _refreshCredentialStatus() async {
    if (_checkingCredentials) return;
    setState(() => _checkingCredentials = true);
    try {
      if (appState.provider == FireTunnelVpnCore.providerId) {
        final account =
            await ref.read(fireTunnelVpnCoreProvider).accountState();
        if (mounted) {
          setState(() {
            _fireTunnelAccount = account;
            _credentialsSaved = account.loggedIn;
          });
        }
        return;
      }
      final saved = Platform.isAndroid
          ? await MobileVpnBridge.credentialsSaved()
          : await ref.read(vpnCoreProvider).credentialsSaved();
      if (mounted) {
        setState(() {
          _credentialsSaved = saved;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _credentialsSaved = false);
    } finally {
      if (mounted) setState(() => _checkingCredentials = false);
    }
  }

  Future<void> _showFireTunnelLogin() async {
    if (_isAccountActionBusy) return;
    setState(() => _isAccountActionBusy = true);
    if (Platform.isAndroid) {
      try {
        await ref.read(fireTunnelVpnCoreProvider).loginWithBrowser();
        if (mounted) await _refreshCredentialStatus();
      } catch (error) {
        if (mounted && !error.toString().contains('login_cancelled')) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: LocalizedText(error.toString())));
        }
      } finally {
        if (mounted) setState(() => _isAccountActionBusy = false);
      }
      return;
    }
    final email = TextEditingController();
    final password = TextEditingController();
    final code = TextEditingController();
    var needsCode = false;
    var submitting = false;
    try {
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext) => StatefulBuilder(
          builder: (context, setDialogState) => AlertDialog(
            backgroundColor: const Color(0xFF1B1B22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.r),
              side: BorderSide(color: Colors.white.withValues(alpha: 0.12)),
            ),
            title: const Row(
              children: [
                Icon(Icons.vpn_key_outlined, color: Colors.orange),
                SizedBox(width: 12),
                LocalizedText(
                  'Firefox Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            content: SizedBox(
              width: 440,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocalizedText(
                    Platform.isAndroid
                        ? 'Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.'
                        : Platform.isWindows
                            ? 'Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.'
                            : 'FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: 18),
                  TextField(
                    controller: email,
                    enabled: !submitting,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: localizedUiText(context, 'Email'),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: password,
                    enabled: !submitting,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: localizedUiText(context, 'Password'),
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                  ),
                  if (needsCode) ...[
                    const SizedBox(height: 12),
                    TextField(
                      controller: code,
                      enabled: !submitting,
                      decoration: InputDecoration(
                        labelText: localizedUiText(
                          context,
                          'Email verification code',
                        ),
                        prefixIcon: Icon(Icons.security),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed:
                    submitting ? null : () => Navigator.pop(dialogContext),
                child: const LocalizedText('Cancel'),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF00D4AA),
                  foregroundColor: Colors.black,
                ),
                onPressed: submitting
                    ? null
                    : () async {
                        setDialogState(() => submitting = true);
                        try {
                          await ref.read(fireTunnelVpnCoreProvider).login(
                                email: email.text.trim(),
                                password: password.text,
                                code: needsCode ? code.text.trim() : null,
                              );
                          password.clear();
                          if (dialogContext.mounted) {
                            Navigator.pop(dialogContext);
                          }
                          await _refreshCredentialStatus();
                        } on FireTunnelException catch (error) {
                          if (error.verificationRequired) {
                            setDialogState(() {
                              needsCode = true;
                              submitting = false;
                            });
                          } else {
                            setDialogState(() => submitting = false);
                            if (dialogContext.mounted) {
                              ScaffoldMessenger.of(dialogContext).showSnackBar(
                                SnackBar(
                                  content: LocalizedText(error.toString()),
                                ),
                              );
                            }
                          }
                        } catch (error) {
                          setDialogState(() => submitting = false);
                          if (dialogContext.mounted) {
                            ScaffoldMessenger.of(dialogContext).showSnackBar(
                              SnackBar(
                                content: LocalizedText(error.toString()),
                              ),
                            );
                          }
                        }
                      },
                child: LocalizedText(
                  submitting
                      ? 'Signing in…'
                      : needsCode
                          ? 'Verify'
                          : 'Sign in',
                ),
              ),
            ],
          ),
        ),
      );
    } finally {
      password.clear();
      email.dispose();
      password.dispose();
      code.dispose();
      if (mounted) setState(() => _isAccountActionBusy = false);
    }
  }

  Future<void> _logoutFireTunnel() async {
    if (_isAccountActionBusy) return;
    setState(() => _isAccountActionBusy = true);
    try {
      await ref.read(fireTunnelVpnCoreProvider).logout();
      await _refreshCredentialStatus();
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: LocalizedText(error.toString())));
      }
    } finally {
      if (mounted) setState(() => _isAccountActionBusy = false);
    }
  }

  Future<void> _handleRefreshCredentials() async {
    if (_isAccountActionBusy || _checkingCredentials) return;
    setState(() => _isAccountActionBusy = true);
    try {
      await _refreshCredentialStatus();
    } finally {
      if (mounted) setState(() => _isAccountActionBusy = false);
    }
  }

  Future<void> _setDnsProtection(bool value) async {
    try {
      if (Platform.isLinux) {
        await _linuxControls.setDnsProtection(value);
      } else {
        await ref.read(vpnCoreProvider).setDnsProtection(value);
      }
      await appState.setDnsProtection(value);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: LocalizedText(error.toString())));
      }
    }
  }

  Future<void> _setIpv6Protection(bool value) async {
    try {
      if (Platform.isLinux) {
        await _linuxControls.setIpv6Protection(value);
      } else {
        await ref.read(vpnCoreProvider).setIpv6Protection(value);
      }
      await appState.setIpv6Protection(value);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: LocalizedText(error.toString())));
      }
    }
  }

  Future<void> _setAutoConnect(bool value) async {
    try {
      if (Platform.isLinux) await _linuxControls.setAutoConnect(value);
      if (Platform.isAndroid || Platform.isIOS) {
        await MobileVpnBridge.setAutoConnect(value);
      }
      if (Platform.isMacOS) {
        await const MilMitVpnMacos().setAutoConnect(value);
      }
      await appState.setAutoConnect(value);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: LocalizedText(error.toString())));
      }
    }
  }

  Widget _buildHeader(BuildContext context) {
    final isPersian = appState.locale.languageCode == 'fa';
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2.w, 4.h, 2.w, 2.h),
      child: Row(
        children: [
          Container(
            width: 46.w,
            height: 46.w,
            decoration: BoxDecoration(
              color: const Color(0xFF08D9B5).withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: const Color(0xFF08D9B5).withValues(alpha: 0.22),
              ),
            ),
            child: const Icon(Icons.tune_rounded, color: Color(0xFF08D9B5)),
          ),
          SizedBox(width: 13.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocalizedText(
                  isPersian ? 'تنظیمات' : 'Settings',
                  style: TextStyle(
                    fontSize: 23.sp.clamp(20, 26),
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    letterSpacing: -0.35,
                  ),
                ),
                SizedBox(height: 3.h),
                LocalizedText(
                  isPersian
                      ? 'مدیریت اتصال، امنیت و شخصی‌سازی'
                      : 'Manage connection, security, and appearance',
                  style: TextStyle(
                    fontSize: 12.sp.clamp(11, 14),
                    color: Colors.white60,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderPills() {
    final current = appState.provider;
    final providers = [
      (
        'harmoney',
        'Harmoney Smart',
        Icons.bolt_rounded,
        const Color(0xFF00E5FF),
      ),
      (
        'firetunnel',
        'Firefox VPN',
        Icons.local_fire_department_rounded,
        Colors.orange,
      ),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: providers.map((p) {
          final (id, label, icon, color) = p;
          final selected = current == id;
          return Padding(
            padding: EdgeInsetsDirectional.only(end: 10.w),
            child: InkWell(
              onTap: () async {
                if (current == id) return;
                final previous = appState.provider;
                await appState.setProvider(id);
                await appState.setProtocol('Auto');
                if (appState.hapticsEnabled) {
                  HapticService.selectionClick();
                }
                ref.invalidate(vpnServersProvider(previous));
                ref.invalidate(vpnServersProvider(id));
                ref.invalidate(fireTunnelAccountProvider);
                await _refreshCredentialStatus();
              },
              borderRadius: BorderRadius.circular(100.r),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: selected
                      ? color.withValues(alpha: 0.22)
                      : Colors.white.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(
                    color:
                        selected ? color : Colors.white.withValues(alpha: 0.1),
                    width: selected ? 1.6 : 1.0,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 16.sp,
                      color: selected ? color : Colors.grey[400],
                    ),
                    SizedBox(width: 8.w),
                    LocalizedText(
                      label,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: 'Lato',
                        fontWeight:
                            selected ? FontWeight.w700 : FontWeight.w500,
                        color: selected ? Colors.white : Colors.grey[300],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildPillTabSelector<T>({
    required List<({T value, String label, IconData? icon})> items,
    required T selectedValue,
    required ValueChanged<T> onSelected,
  }) {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: items.map((item) {
          final isSelected = item.value == selectedValue;
          return Expanded(
            child: InkWell(
              onTap: () => onSelected(item.value),
              borderRadius: BorderRadius.circular(10.r),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(vertical: 9.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF00D4AA).withValues(alpha: 0.22)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: isSelected
                        ? const Color(0xFF00D4AA)
                        : Colors.transparent,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (item.icon != null) ...[
                      Icon(
                        item.icon,
                        size: 15.sp,
                        color: isSelected
                            ? const Color(0xFF00D4AA)
                            : Colors.grey[400],
                      ),
                      SizedBox(width: 6.w),
                    ],
                    Flexible(
                      child: LocalizedText(
                        item.label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Lato',
                          fontWeight:
                              isSelected ? FontWeight.w700 : FontWeight.w500,
                          color: isSelected ? Colors.white : Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildLanguageSelector({
    required String selectedValue,
    required ValueChanged<String> onSelected,
  }) {
    const languageNames = <String, String>{
      'ar': 'Arabic',
      'de': 'Deutsch',
      'en': 'English',
      'es': 'Spanish',
      'fa': 'Persian',
      'fr': 'French',
      'it': 'Italiano',
      'ru': 'Russian',
      'tr': 'Turkish',
      'zh': 'Chinese',
    };
    final languages = AppLocalizations.supportedLocales
        .map(
          (locale) => (
            code: locale.languageCode,
            label: languageNames[locale.languageCode] ?? locale.toString(),
          ),
        )
        .toList(growable: false);

    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: languages.map((lang) {
        final isSelected = lang.code == selectedValue;
        return InkWell(
          onTap: () => onSelected(lang.code),
          borderRadius: BorderRadius.circular(10.r),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xFF00D4AA).withValues(alpha: 0.22)
                  : Colors.black.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: isSelected
                    ? const Color(0xFF00D4AA)
                    : Colors.white.withValues(alpha: 0.1),
                width: 1.2,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: const Color(0xFF00D4AA).withValues(alpha: 0.25),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: LocalizedText(
              lang.label,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Lato',
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                color: isSelected ? const Color(0xFF00D4AA) : Colors.white70,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _settingsActionTile({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required Widget action,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 520;
        final leading = Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.13),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(icon, color: color, size: 20.sp),
        );
        final details = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocalizedText(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 3.h),
            LocalizedText(
              subtitle,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 12.sp,
                height: 1.3,
              ),
            ),
          ],
        );
        return Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.w, 12.h, 16.w, 12.h),
          child: compact
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        leading,
                        SizedBox(width: 12.w),
                        Expanded(child: details),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: action,
                    ),
                  ],
                )
              : Row(
                  children: [
                    leading,
                    SizedBox(width: 12.w),
                    Expanded(child: details),
                    SizedBox(width: 12.w),
                    action,
                  ],
                ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings(appState.locale.languageCode);
    final isPersian = appState.locale.languageCode == 'fa';
    final theme = Theme.of(context);
    final connState = ref.watch(connectionStateProvider);
    final connStatus =
        connState.valueOrNull?.status ?? VpnConnectionStatus.disconnected;
    final sectionGap = SizedBox(height: 14.h);

    return MainScreenBackground(
      status: connStatus,
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.fromSTEB(16.w, 18.h, 16.w, 112.h),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 760),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildHeader(context),
                  SizedBox(height: 16.h),
                  const BatteryOptimizationBanner(),
                  sectionGap,
                  const HarmoneyProDownloadCard(),
                  sectionGap,
                  _ModernSettingsGroup(
                    icon: Icons.hub_outlined,
                    iconColor: const Color(0xFF08D9B5),
                    title: isPersian
                        ? 'اتصال و شبکه'
                        : 'Connection & network',
                    subtitle: isPersian
                        ? 'سرویس VPN موردنظر را انتخاب کنید'
                        : 'Choose the VPN service for your connection',
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          16.w,
                          12.h,
                          16.w,
                          14.h,
                        ),
                        child: _buildProviderPills(),
                      ),
                    ],
                  ),
                  sectionGap,
                  _buildAccountHeroCard(context, strings),
                  sectionGap,
                  _ModernSettingsGroup(
                    icon: Icons.alt_route_rounded,
                    iconColor: const Color(0xFF08D9B5),
                    title:
                        isPersian ? 'پروتکل اتصال' : 'VPN protocol',
                    subtitle: isPersian
                        ? 'پروتکل‌های موجود برای سرویس انتخاب‌شده'
                        : 'Available options for this service',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(14.w),
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 200),
                          child: KeyedSubtree(
                            key: ValueKey(appState.provider),
                            child: _buildProtocolSelector(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                  sectionGap,
                  _ModernSettingsGroup(
                    icon: Icons.shield_outlined,
                    iconColor: const Color(0xFF08D9B5),
                    title: isPersian
                        ? 'امنیت و حریم خصوصی'
                        : 'Privacy & security',
                    subtitle: isPersian
                        ? 'محافظت‌های شبکه برای این دستگاه'
                        : 'Network protections configured for this device',
                    children: [
                      _ModernSwitchTile(
                        icon: Icons.power_settings_new_rounded,
                        iconColor: const Color(0xFFF27777),
                        title: isPersian
                            ? 'کلید قطع اضطراری'
                            : strings.killSwitch,
                        subtitle: isPersian
                            ? 'جلوگیری از ترافیک خارج از تونل هنگام قطع VPN'
                            : strings.killSwitchSubtitle,
                        value: appState.killSwitch,
                        onChanged: _setKillSwitch,
                      ),
                      Divider(
                        height: 1,
                        indent: 68.w,
                        color: Colors.white.withValues(alpha: 0.07),
                      ),
                      _ModernSwitchTile(
                        icon: Icons.dns_rounded,
                        iconColor: const Color(0xFF69B8EE),
                        title: isPersian
                            ? 'محافظت در برابر نشت DNS'
                            : strings.dnsLeakProtection,
                        subtitle: isPersian
                            ? 'هدایت درخواست‌های DNS از مسیر تونل VPN'
                            : 'Routes DNS requests through the VPN tunnel',
                        value: appState.dnsProtection,
                        onChanged: _setDnsProtection,
                      ),
                      Divider(
                        height: 1,
                        indent: 68.w,
                        color: Colors.white.withValues(alpha: 0.07),
                      ),
                      _ModernSwitchTile(
                        icon: Icons.language_rounded,
                        iconColor: const Color(0xFFB49AFF),
                        title: isPersian
                            ? 'محافظت در برابر نشت IPv6'
                            : strings.ipv6LeakProtection,
                        subtitle: isPersian
                            ? 'جلوگیری از عبور ترافیک IPv6 خارج از تونل'
                            : 'Prevents unrouted IPv6 traffic from bypassing the tunnel',
                        value: appState.ipv6Protection,
                        onChanged: _setIpv6Protection,
                      ),
                      if (Platform.isLinux) ...[
                        Divider(
                          height: 1,
                          indent: 68.w,
                          color: Colors.white.withValues(alpha: 0.07),
                        ),
                        _settingsActionTile(
                          icon: Icons.restart_alt_rounded,
                          color: const Color(0xFFF2B95C),
                          title: isPersian
                              ? 'بازیابی شبکه'
                              : 'Restore network',
                          subtitle: isPersian
                              ? 'بازیابی مسیرها و قوانین ترافیک در صورت اختلال شبکه'
                              : 'Restore routes and traffic rules if the network is stuck',
                          action: OutlinedButton(
                            onPressed: _unjamNetwork,
                            child: LocalizedText(
                              isPersian ? 'بازگردانی' : 'Restore',
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  sectionGap,
                  _ModernSettingsGroup(
                    icon: Icons.autorenew_rounded,
                    iconColor: const Color(0xFF08D9B5),
                    title: isPersian
                        ? 'خودکارسازی و پروفایل‌ها'
                        : 'Automation & profiles',
                    subtitle: isPersian
                        ? 'رفتار اتصال هنگام راه‌اندازی و پیکربندی‌های واردشده'
                        : 'Startup behavior and imported VPN configurations',
                    children: [
                      _ModernSwitchTile(
                        icon: Icons.flash_on_rounded,
                        iconColor: const Color(0xFFF2B95C),
                        title: isPersian
                            ? 'اتصال خودکار'
                            : strings.autoConnect,
                        subtitle: isPersian
                            ? 'پس از اجرای برنامه به VPN متصل شوید'
                            : strings.autoConnectSubtitle,
                        value: appState.autoConnect,
                        onChanged: _setAutoConnect,
                      ),
                      if (Platform.isLinux || Platform.isWindows) ...[
                        Divider(
                          height: 1,
                          indent: 68.w,
                          color: Colors.white.withValues(alpha: 0.07),
                        ),
                        _ModernSwitchTile(
                          icon: Icons.power_settings_new_rounded,
                          iconColor: const Color(0xFF08D9B5),
                          title: isPersian
                              ? 'اجرا هنگام ورود به سیستم'
                              : 'Launch at system startup',
                          subtitle: isPersian
                              ? 'اجرای Harmoney پس از ورود به سیستم'
                              : 'Start Harmoney when you sign in',
                          value: _launchAtStartup,
                          onChanged: _setLaunchAtStartup,
                        ),
                      ],
                      if (Platform.isLinux || Platform.isAndroid) ...[
                        Divider(
                          height: 1,
                          indent: 68.w,
                          color: Colors.white.withValues(alpha: 0.07),
                        ),
                        _ModernSwitchTile(
                          icon: Icons.shield_moon_outlined,
                          iconColor: const Color(0xFFB49AFF),
                          title: isPersian
                              ? 'VPN همیشه‌روشن'
                              : 'Always-on VPN',
                          subtitle: Platform.isLinux
                              ? (isPersian
                                  ? 'اتصال مجدد خودکار با ناظر سیستم'
                                  : 'Reconnect through the system watchdog')
                              : (isPersian
                                  ? 'بازکردن تنظیمات VPN اندروید برای پیکربندی اتصال همیشه‌روشن'
                                  : 'Opens Android VPN settings to configure Always-on'),
                          value: _alwaysOnVpn,
                          badge: Platform.isLinux ? 'systemd' : 'Android',
                          onChanged: _setAlwaysOnVpn,
                        ),
                      ],
                    ],
                  ),
                  sectionGap,
                  _ModernSettingsGroup(
                    icon: Icons.palette_outlined,
                    iconColor: const Color(0xFFDE9DCE),
                    title: isPersian ? 'شخصی‌سازی' : 'Appearance',
                    subtitle: isPersian
                        ? 'انتخاب پوسته و زبان برنامه'
                        : 'Choose the app theme and language',
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LocalizedText(
                              isPersian ? 'پوسته' : 'Theme',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            _buildPillTabSelector<ThemeMode>(
                              items: [
                                (
                                  value: ThemeMode.system,
                                  label: strings.system,
                                  icon: Icons.brightness_auto_outlined,
                                ),
                                (
                                  value: ThemeMode.light,
                                  label: strings.light,
                                  icon: Icons.light_mode_outlined,
                                ),
                                (
                                  value: ThemeMode.dark,
                                  label: strings.dark,
                                  icon: Icons.dark_mode_outlined,
                                ),
                              ],
                              selectedValue: appState.themeMode,
                              onSelected: _setTheme,
                            ),
                            SizedBox(height: 16.h),
                            Divider(
                              height: 1,
                              color: Colors.white.withValues(alpha: 0.08),
                            ),
                            SizedBox(height: 14.h),
                            LocalizedText(
                              isPersian
                                  ? 'زبان برنامه'
                                  : 'App language',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            _buildLanguageSelector(
                              selectedValue: appState.locale.languageCode,
                              onSelected: (code) =>
                                  appState.setLocale(Locale(code)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  sectionGap,
                  _ModernSettingsGroup(
                    icon: Icons.monitor_heart_outlined,
                    iconColor: const Color(0xFF08D9B5),
                    title: isPersian ? 'عیب‌یابی' : 'Diagnostics',
                    subtitle: isPersian
                        ? 'رویدادهای اتصال، خطاهای شبکه و گزارش‌های فنی'
                        : 'Connection events, network errors, and technical logs',
                    children: [
                      _settingsActionTile(
                        icon: Icons.terminal_rounded,
                        color: const Color(0xFF08D9B5),
                        title: isPersian
                            ? 'گزارش‌های فنی'
                            : 'Technical logs',
                        subtitle: isPersian
                            ? 'مشاهده و فیلتر گزارش‌های برنامه'
                            : 'View and filter application logs',
                        action: FilledButton.tonal(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const TalkerLogsPage(),
                            ),
                          ),
                          child: LocalizedText(
                              isPersian ? 'مشاهده' : 'Open'),
                        ),
                      ),
                    ],
                  ),
                  sectionGap,
                  _buildAboutCard(context, strings, theme),
                  SizedBox(height: 18.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAccountHeroCard(BuildContext context, AppStrings strings) {
    final isHarmoney = appState.provider == 'harmoney';
    final isFirefox = appState.provider == FireTunnelVpnCore.providerId;
    if (isHarmoney) {
      return _buildHarmoneyAccountCard(context, strings);
    }
    if (isFirefox) {
      return _buildFirefoxAccountHeroCard(context, strings);
    }
    return _buildHarmoneyAccountCard(context, strings);
  }

  Widget _buildHarmoneyAccountCard(BuildContext context, AppStrings strings) {
    final isPersian = widget.appState.locale.languageCode == 'fa';
    final connection = ref.watch(connectionStateProvider).asData?.value;
    final connected =
        connection?.providerId == 'harmoney' && connection?.isConnected == true;
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0x2800D4AA), Color(0x10141416)],
        ),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: const Color(0xFF00D4AA).withValues(alpha: 0.35),
        ),
      ),
      padding: EdgeInsets.all(18.w),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: const Color(0xFF00D4AA).withValues(alpha: 0.16),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.verified_user_rounded,
              color: const Color(0xFF00D4AA),
              size: 26.sp,
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 6,
                  children: [
                    LocalizedText(
                      isPersian
                          ? 'هستهٔ هارمونی'
                          : 'Harmoney Anti-Censorship Core',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF61F2C2).withValues(alpha: 0.18),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: const Color(0xFF61F2C2).withValues(alpha: 0.4),
                          width: 0.8,
                        ),
                      ),
                      child: LocalizedText(
                        connected
                            ? (isPersian ? 'متصل' : 'CONNECTED')
                            : (isPersian ? 'قطع' : 'DISCONNECTED'),
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF61F2C2),
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                LocalizedText(
                  isPersian
                      ? 'انتخاب مسیر از کانفیگ‌های Xray، WARP و MASQUE؛ اتصال پس از تأیید عبور ترافیک نمایش داده می‌شود.'
                      : 'Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.',
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 12.sp,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool get _isFirefoxSessionExpired {
    if (_fireTunnelAccount == null) return false;
    final warning = (_fireTunnelAccount?.warning ?? '').toLowerCase();
    final hasWarningExpiry = warning.contains('expired') ||
        warning.contains('session') ||
        warning.contains('unauthorized') ||
        warning.contains('auth') ||
        warning.contains('token');
    final hadSavedButNotLoggedIn =
        _credentialsSaved == true && _fireTunnelAccount?.loggedIn == false;
    return hasWarningExpiry || hadSavedButNotLoggedIn;
  }

  String _toPersianDigits(String input) {
    const en = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const fa = ['Û°', 'Û±', 'Û²', 'Û³', 'Û´', 'Ûµ', 'Û¶', 'Û·', 'Û¸', 'Û¹'];
    var result = input;
    for (var i = 0; i < 10; i++) {
      result = result.replaceAll(en[i], fa[i]);
    }
    return result;
  }

  String _formatGiB(double bytes, bool isPersian) {
    final gib = bytes / 1073741824.0;
    final formatted = (gib % 1 == 0 || gib >= 10)
        ? gib.toStringAsFixed(gib < 10 && gib % 1 != 0 ? 1 : 0)
        : gib.toStringAsFixed(1);
    return isPersian ? _toPersianDigits(formatted) : formatted;
  }

  String? _formatResetDate(dynamic raw, bool isPersian) {
    if (raw == null) return null;
    DateTime? dt;
    if (raw is int) {
      dt = raw > 100000000000
          ? DateTime.fromMillisecondsSinceEpoch(raw)
          : DateTime.fromMillisecondsSinceEpoch(raw * 1000);
    } else {
      dt = DateTime.tryParse('$raw')?.toLocal();
    }
    if (dt == null) return null;
    final formatted =
        '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}';
    return isPersian ? _toPersianDigits(formatted) : formatted;
  }

  ({
    bool available,
    bool unlimited,
    double remainingBytes,
    double limitBytes,
    double ratio,
    String? resetDateString,
  }) _getFirefoxQuotaData(bool isPersian) {
    final quota = _fireTunnelAccount?.quota;
    if (quota == null) {
      return (
        available: false,
        unlimited: false,
        remainingBytes: 0,
        limitBytes: 0,
        ratio: 0,
        resetDateString: null,
      );
    }

    final rawLimit =
        quota['limit'] ?? quota['max_bytes'] ?? quota['quota_limit'];
    final rawRemaining = quota['remaining'] ?? quota['quota_remaining'];
    if (rawLimit == null || rawRemaining == null) {
      return (
        available: false,
        unlimited: false,
        remainingBytes: 0,
        limitBytes: 0,
        ratio: 0,
        resetDateString: null,
      );
    }

    final limit = double.tryParse('$rawLimit');
    final remaining = double.tryParse('$rawRemaining');

    if (limit == null || remaining == null) {
      return (
        available: false,
        unlimited: false,
        remainingBytes: 0,
        limitBytes: 0,
        ratio: 0,
        resetDateString: null,
      );
    }

    // Unlimited quota: limit == -1
    if (limit == -1) {
      return (
        available: true,
        unlimited: true,
        remainingBytes: remaining < 0 ? 0 : remaining,
        limitBytes: -1,
        ratio: 1.0,
        resetDateString: _formatResetDate(quota['reset'], isPersian),
      );
    }

    // Invalid limit (<= 0)
    if (limit <= 0) {
      return (
        available: false,
        unlimited: false,
        remainingBytes: 0,
        limitBytes: 0,
        ratio: 0,
        resetDateString: null,
      );
    }

    final safeRemaining = remaining.clamp(0.0, limit);
    final ratio = (safeRemaining / limit).clamp(0.0, 1.0);

    return (
      available: true,
      unlimited: false,
      remainingBytes: safeRemaining,
      limitBytes: limit,
      ratio: ratio,
      resetDateString: _formatResetDate(quota['reset'], isPersian),
    );
  }

  Future<void> _showFirefoxAccountManagementModal(
    BuildContext context,
    AppStrings strings,
  ) async {
    final isPersian = widget.appState.locale.languageCode == 'fa';
    final quotaData = _getFirefoxQuotaData(isPersian);

    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: const Color(0xFF141F24),
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        side: BorderSide(color: Colors.white.withValues(alpha: 0.12)),
      ),
      builder: (modalContext) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 38.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00D4AA).withValues(alpha: 0.16),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shield_outlined,
                        color: const Color(0xFF00D4AA),
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocalizedText(
                            isPersian
                                ? 'مدیریت حساب Firefox VPN'
                                : 'Manage Firefox VPN Account',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          if (_fireTunnelAccount?.version != null)
                            LocalizedText(
                              'Version: ${_fireTunnelAccount!.version}',
                              style: TextStyle(
                                fontFamily: 'SF Pro',
                                fontSize: 11.sp,
                                color: Colors.grey[400],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (quotaData.available && !quotaData.unlimited) ...[
                  SizedBox(height: 14.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LocalizedText(
                          isPersian
                              ? 'باقیمانده ترافیک:'
                              : 'Remaining traffic:',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey[300],
                            fontFamily: isPersian ? null : 'SF Pro',
                          ),
                        ),
                        LocalizedText(
                          isPersian
                              ? '${_formatGiB(quotaData.remainingBytes, true)} از ${_formatGiB(quotaData.limitBytes, true)} گیبی‌بایت'
                              : '${_formatGiB(quotaData.remainingBytes, false)} of ${_formatGiB(quotaData.limitBytes, false)} GiB',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF00D4AA),
                            fontFamily: isPersian ? null : 'Lato',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                SizedBox(height: 12.h),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00D4AA).withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Icon(
                      Icons.sync_rounded,
                      color: Color(0xFF00D4AA),
                    ),
                  ),
                  title: LocalizedText(
                    isPersian
                        ? 'تازه‌سازی وضعیت و سهمیه'
                        : 'Refresh status & quota',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: LocalizedText(
                    isPersian
                        ? 'بررسی آخرین وضعیت نشست و باقیمانده حجم'
                        : 'Query latest session and traffic quota',
                    style: TextStyle(fontSize: 11.sp, color: Colors.grey[400]),
                  ),
                  onTap: () {
                    Navigator.pop(modalContext);
                    _handleRefreshCredentials();
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.amber.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Icon(
                      Icons.refresh_rounded,
                      color: Colors.amber,
                    ),
                  ),
                  title: LocalizedText(
                    isPersian
                        ? 'ورود مجدد به حساب'
                        : 'Re-login to account',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: LocalizedText(
                    isPersian
                        ? 'تمدید توکن نشست یا ورود با حساب دیگر'
                        : 'Renew session tokens or switch account',
                    style: TextStyle(fontSize: 11.sp, color: Colors.grey[400]),
                  ),
                  onTap: () {
                    Navigator.pop(modalContext);
                    _showFireTunnelLogin();
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Icon(
                      Icons.logout_rounded,
                      color: Colors.redAccent,
                    ),
                  ),
                  title: LocalizedText(
                    isPersian ? 'خروج از حساب' : 'Logout',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent,
                    ),
                  ),
                  subtitle: LocalizedText(
                    isPersian
                        ? 'حذف مشخصات ذخیره‌شده از دستگاه'
                        : 'Clear stored credentials from this device',
                    style: TextStyle(fontSize: 11.sp, color: Colors.grey[400]),
                  ),
                  onTap: () {
                    Navigator.pop(modalContext);
                    _logoutFireTunnel();
                  },
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFirefoxAccountHeroCard(
    BuildContext context,
    AppStrings strings,
  ) {
    final isPersian = widget.appState.locale.languageCode == 'fa';
    final reduceMotion =
        MediaQuery.maybeOf(context)?.disableAnimations ?? false;
    final isSaved = _credentialsSaved == true;
    final isSessionExpired = _isFirefoxSessionExpired;
    final quotaData = _getFirefoxQuotaData(isPersian);

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: reduceMotion ? 1.0 : 0.0, end: 1.0),
      duration:
          reduceMotion ? Duration.zero : const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      builder: (context, animValue, child) {
        return Opacity(
          opacity: animValue,
          child: Transform.translate(
            offset: Offset(0, (1.0 - animValue) * 6),
            child: child,
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0F1A17).withValues(alpha: 0.88),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFF00D4AA).withValues(alpha: 0.10),
                  const Color(0xFF0A1416).withValues(alpha: 0.94),
                ],
              ),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: const Color(0xFF00D4AA).withValues(alpha: 0.22),
                width: 1.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.35),
                  blurRadius: 18,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            padding: EdgeInsets.all(18.w),
            child: AnimatedSize(
              duration: reduceMotion
                  ? Duration.zero
                  : const Duration(milliseconds: 250),
              curve: Curves.easeInOutCubic,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // --- TOP HEADER ---
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 8.w,
                          runSpacing: 6.h,
                          children: [
                            Container(
                              padding: EdgeInsets.all(7.w),
                              decoration: BoxDecoration(
                                color: const Color(0xFF00D4AA)
                                    .withValues(alpha: 0.14),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.shield_outlined,
                                color: const Color(0xFF00D4AA),
                                size: 18.sp,
                              ),
                            ),
                            LocalizedText(
                              isPersian
                                  ? 'حساب Firefox VPN'
                                  : 'Firefox VPN Account',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                            AnimatedSwitcher(
                              duration: reduceMotion
                                  ? Duration.zero
                                  : const Duration(milliseconds: 200),
                              child: _buildFirefoxStatusBadge(
                                isPersian: isPersian,
                                isSaved: isSaved,
                                isSessionExpired: isSessionExpired,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.w),
                      _buildFirefoxMoreMenu(
                        context,
                        strings,
                        isPersian,
                        isSaved,
                      ),
                    ],
                  ),

                  SizedBox(height: 14.h),

                  // --- SECTION 1: ACCOUNT STATUS ---
                  AnimatedSwitcher(
                    duration: reduceMotion
                        ? Duration.zero
                        : const Duration(milliseconds: 200),
                    child: _buildFirefoxStatusContent(
                      isPersian: isPersian,
                      isSaved: isSaved,
                      isSessionExpired: isSessionExpired,
                    ),
                  ),

                  // --- SECTION 2: QUOTA (when logged in) ---
                  if (isSaved) ...[
                    Divider(
                      color: Colors.white.withValues(alpha: 0.08),
                      height: 24.h,
                    ),
                    _buildFirefoxQuotaSection(
                      quotaData: quotaData,
                      isPersian: isPersian,
                      reduceMotion: reduceMotion,
                    ),
                  ],

                  // --- SECTION 3: ACTIONS ---
                  Divider(
                    color: Colors.white.withValues(alpha: 0.08),
                    height: 24.h,
                  ),
                  _buildFirefoxActionsSection(
                    context: context,
                    strings: strings,
                    isPersian: isPersian,
                    isSaved: isSaved,
                    isSessionExpired: isSessionExpired,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFirefoxStatusBadge({
    required bool isPersian,
    required bool isSaved,
    required bool isSessionExpired,
  }) {
    if (_checkingCredentials) {
      return Container(
        key: const ValueKey('badge-checking'),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        decoration: BoxDecoration(
          color: const Color(0xFF00D4AA).withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: const Color(0xFF00D4AA).withValues(alpha: 0.35),
            width: 0.8,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 10.w,
              height: 10.w,
              child: const CircularProgressIndicator(
                strokeWidth: 1.5,
                color: Color(0xFF00D4AA),
              ),
            ),
            SizedBox(width: 5.w),
            LocalizedText(
              isPersian ? 'در حال بررسی…' : 'Checking…',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF00D4AA),
                fontFamily: 'Lato',
              ),
            ),
          ],
        ),
      );
    }

    if (isSessionExpired) {
      return Container(
        key: const ValueKey('badge-expired'),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        decoration: BoxDecoration(
          color: Colors.amber.withValues(alpha: 0.16),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: Colors.amber.withValues(alpha: 0.4),
            width: 0.8,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.warning_amber_rounded, size: 11.sp, color: Colors.amber),
            SizedBox(width: 4.w),
            LocalizedText(
              isPersian ? 'نشست منقضی شده' : 'Session Expired',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w800,
                color: Colors.amberAccent,
                fontFamily: 'Lato',
              ),
            ),
          ],
        ),
      );
    }

    if (isSaved) {
      return Container(
        key: const ValueKey('badge-saved'),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        decoration: BoxDecoration(
          color: const Color(0xFF61F2C2).withValues(alpha: 0.18),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: const Color(0xFF61F2C2).withValues(alpha: 0.4),
            width: 0.8,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle_rounded,
              size: 11.sp,
              color: const Color(0xFF61F2C2),
            ),
            SizedBox(width: 4.w),
            LocalizedText(
              isPersian ? 'وارد شده' : 'Logged In',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF61F2C2),
                fontFamily: 'Lato',
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      key: const ValueKey('badge-not-saved'),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.20),
          width: 0.8,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.lock_open_rounded, size: 11.sp, color: Colors.grey[400]),
          SizedBox(width: 4.w),
          LocalizedText(
            isPersian ? 'نیاز به ورود' : 'Login Required',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              color: Colors.grey[300],
              fontFamily: 'Lato',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFirefoxStatusContent({
    required bool isPersian,
    required bool isSaved,
    required bool isSessionExpired,
  }) {
    if (_checkingCredentials) {
      return Row(
        key: const ValueKey('content-checking'),
        children: [
          SizedBox(
            width: 14.w,
            height: 14.w,
            child: const CircularProgressIndicator(
              strokeWidth: 2,
              color: Color(0xFF00D4AA),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: LocalizedText(
              isPersian
                  ? 'در حال بررسی حساب…'
                  : 'Checking account…',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[300],
                fontFamily: isPersian ? null : 'SF Pro',
              ),
            ),
          ),
        ],
      );
    }

    if (isSessionExpired) {
      return Row(
        key: const ValueKey('content-expired'),
        children: [
          Icon(
            Icons.info_outline_rounded,
            size: 16.sp,
            color: const Color(0xFFFFB74D),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: LocalizedText(
              isPersian
                  ? 'نشست امنیتی منقضی شده است؛ برای استفاده از سرورها مجدداً وارد شوید.'
                  : 'Security session expired; please sign in again to use servers.',
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xFFFFB74D),
                fontFamily: isPersian ? null : 'SF Pro',
              ),
            ),
          ),
        ],
      );
    }

    if (!isSaved) {
      return Row(
        key: const ValueKey('content-not-saved'),
        children: [
          Icon(Icons.vpn_key_outlined, size: 16.sp, color: Colors.grey[400]),
          SizedBox(width: 8.w),
          Expanded(
            child: LocalizedText(
              isPersian
                  ? 'برای فعال‌سازی تونل Firefox و دسترسی به سهمیه، وارد حساب شوید.'
                  : 'Sign in to activate Firefox tunnel and view data quota.',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[400],
                fontFamily: isPersian ? null : 'SF Pro',
              ),
            ),
          ),
        ],
      );
    }

    // Is saved: derive VPN status ONLY from real connection state!
    final connState = ref.watch(connectionStateProvider).asData?.value;
    final isConnected = connState?.providerId == FireTunnelVpnCore.providerId &&
        connState?.isConnected == true;
    final isConnecting =
        connState?.providerId == FireTunnelVpnCore.providerId &&
            connState?.isTransitioning == true;

    return Row(
      key: ValueKey('content-saved-$isConnected-$isConnecting'),
      children: [
        Container(
          width: 8.w,
          height: 8.w,
          decoration: BoxDecoration(
            color: isConnected
                ? const Color(0xFF00D4AA)
                : isConnecting
                    ? Colors.amber
                    : Colors.grey[500],
            shape: BoxShape.circle,
            boxShadow: isConnected
                ? [
                    BoxShadow(
                      color: const Color(0xFF00D4AA).withValues(alpha: 0.4),
                      blurRadius: 6,
                    ),
                  ]
                : null,
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: LocalizedText(
            isConnected
                ? (isPersian
                    ? 'تونل VPN فعال و متصل است${connState?.server?.city != null ? ' (${connState!.server!.city})' : ''}'
                    : 'VPN tunnel is active & connected${connState?.server?.city != null ? ' (${connState!.server!.city})' : ''}')
                : isConnecting
                    ? (isPersian
                        ? 'در حال برقراری اتصال تونل…'
                        : 'Establishing secure tunnel…')
                    : (isPersian
                        ? 'تونل VPN غیرفعال است · آماده اتصال'
                        : 'VPN tunnel inactive · Ready to connect'),
            style: TextStyle(
              fontSize: 12.sp,
              color: isConnected ? const Color(0xFF00D4AA) : Colors.grey[300],
              fontFamily: isPersian ? null : 'SF Pro',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFirefoxQuotaSection({
    required ({
      bool available,
      bool unlimited,
      double remainingBytes,
      double limitBytes,
      double ratio,
      String? resetDateString,
    }) quotaData,
    required bool isPersian,
    required bool reduceMotion,
  }) {
    return Semantics(
      label: isPersian ? 'سهمیه ترافیک' : 'Traffic Quota',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8.w,
            runSpacing: 4.h,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.data_usage_rounded,
                    size: 16.sp,
                    color: const Color(0xFF00D4AA),
                  ),
                  SizedBox(width: 6.w),
                  LocalizedText(
                    isPersian
                        ? 'سهمیه ترافیک ماهانه'
                        : 'Monthly Allowance',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              if (quotaData.resetDateString != null)
                LocalizedText(
                  isPersian
                      ? 'بازنشانی: ${quotaData.resetDateString}'
                      : 'Resets: ${quotaData.resetDateString}',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.grey[400],
                    fontFamily: isPersian ? null : 'SF Pro',
                  ),
                ),
            ],
          ),
          SizedBox(height: 8.h),
          if (!quotaData.available)
            Row(
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  size: 15.sp,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 6.w),
                Expanded(
                  child: LocalizedText(
                    isPersian
                        ? 'اطلاعات حجم در دسترس نیست'
                        : 'Quota information unavailable',
                    style: TextStyle(
                      fontFamily: isPersian ? null : 'SF Pro',
                      fontSize: 12.sp,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ],
            )
          else if (quotaData.unlimited) ...[
            LocalizedText(
              isPersian ? 'سهمیه نامحدود' : 'Unlimited quota',
              style: TextStyle(
                fontFamily: isPersian ? null : 'Lato',
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF00D4AA),
              ),
            ),
            SizedBox(height: 8.h),
            _buildQuotaBar(1.0, false, reduceMotion),
          ] else ...[
            _buildQuotaText(
              context,
              quotaData.remainingBytes,
              quotaData.limitBytes,
              isPersian,
            ),
            SizedBox(height: 8.h),
            _buildQuotaBar(
              quotaData.ratio,
              quotaData.ratio <= 0.20,
              reduceMotion,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuotaText(
    BuildContext context,
    double remaining,
    double limit,
    bool isPersian,
  ) {
    final remStr = _formatGiB(remaining, isPersian);
    final limStr = _formatGiB(limit, isPersian);
    final unit = isPersian ? 'گیبی‌بایت' : 'GiB';

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: remStr,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontFamily: isPersian ? null : 'Lato',
            ),
          ),
          TextSpan(
            text: localizedUiText(context, isPersian ? ' از ' : ' of '),
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white70,
              fontFamily: isPersian ? null : 'SF Pro',
            ),
          ),
          TextSpan(
            text: '$limStr $unit ',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF00D4AA),
              fontFamily: isPersian ? null : 'Lato',
            ),
          ),
          TextSpan(
            text: localizedUiText(
              context,
              isPersian ? 'باقیمانده' : 'remaining',
            ),
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white70,
              fontFamily: isPersian ? null : 'SF Pro',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuotaBar(
    double targetRatio,
    bool isLowQuota,
    bool reduceMotion,
  ) {
    final startProgress = _lastQuotaProgress;
    _lastQuotaProgress = targetRatio;

    final barColor =
        isLowQuota ? const Color(0xFFFFB74D) : const Color(0xFF00D4AA);

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: reduceMotion ? targetRatio : startProgress,
        end: targetRatio,
      ),
      duration:
          reduceMotion ? Duration.zero : const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      builder: (context, animatedValue, _) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(100.r),
          child: Container(
            height: 6.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(100.r),
            ),
            alignment: AlignmentDirectional.centerStart,
            child: FractionallySizedBox(
              widthFactor: animatedValue.clamp(0.0, 1.0),
              child: Container(
                height: 6.h,
                decoration: BoxDecoration(
                  color: barColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFirefoxActionsSection({
    required BuildContext context,
    required AppStrings strings,
    required bool isPersian,
    required bool isSaved,
    required bool isSessionExpired,
  }) {
    if (!isSaved) {
      return Wrap(
        spacing: 8.w,
        runSpacing: 8.h,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: _isAccountActionBusy ? null : _showFireTunnelLogin,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF00D4AA),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            ),
            icon: _isAccountActionBusy
                ? SizedBox(
                    width: 14.w,
                    height: 14.w,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.black,
                    ),
                  )
                : Icon(Icons.login_rounded, size: 16.sp),
            label: LocalizedText(
              isPersian ? 'ورود به حساب' : 'Log in to account',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      );
    }

    if (isSessionExpired) {
      return Wrap(
        spacing: 8.w,
        runSpacing: 8.h,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: _isAccountActionBusy ? null : _showFireTunnelLogin,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF00D4AA),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            ),
            icon: _isAccountActionBusy
                ? SizedBox(
                    width: 14.w,
                    height: 14.w,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.black,
                    ),
                  )
                : Icon(Icons.refresh_rounded, size: 16.sp),
            label: LocalizedText(
              isPersian ? 'ورود مجدد' : 'Re-login',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: _isAccountActionBusy ? null : _logoutFireTunnel,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white70,
              side: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
            ),
            icon: Icon(Icons.logout_rounded, size: 15.sp),
            label: LocalizedText(
              isPersian ? 'خروج از حساب' : 'Logout',
              style: TextStyle(fontFamily: 'Lato', fontSize: 12.sp),
            ),
          ),
        ],
      );
    }

    // Saved and normal session:
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        FilledButton.tonalIcon(
          onPressed: _isAccountActionBusy
              ? null
              : () => _showFirefoxAccountManagementModal(context, strings),
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFF00D4AA).withValues(alpha: 0.16),
            foregroundColor: const Color(0xFF00D4AA),
            side: BorderSide(
              color: const Color(0xFF00D4AA).withValues(alpha: 0.35),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          ),
          icon: Icon(Icons.tune_rounded, size: 16.sp),
          label: LocalizedText(
            isPersian ? 'مدیریت حساب' : 'Manage Account',
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ),
        OutlinedButton.icon(
          onPressed: _isAccountActionBusy ? null : _showFireTunnelLogin,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white70,
            side: BorderSide(color: Colors.white.withValues(alpha: 0.18)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          ),
          icon: Icon(Icons.sync_rounded, size: 15.sp),
          label: LocalizedText(
            isPersian ? 'ورود مجدد' : 'Re-login',
            style: TextStyle(fontFamily: 'Lato', fontSize: 12.sp),
          ),
        ),
        OutlinedButton.icon(
          onPressed: _isAccountActionBusy ? null : _logoutFireTunnel,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white70,
            side: BorderSide(color: Colors.white.withValues(alpha: 0.18)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          ),
          icon: Icon(Icons.logout_rounded, size: 15.sp),
          label: LocalizedText(
            isPersian ? 'خروج' : 'Logout',
            style: TextStyle(fontFamily: 'Lato', fontSize: 12.sp),
          ),
        ),
        if (_isAccountActionBusy)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: SizedBox(
              width: 14.w,
              height: 14.w,
              child: const CircularProgressIndicator(
                strokeWidth: 2,
                color: Color(0xFF00D4AA),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildFirefoxMoreMenu(
    BuildContext context,
    AppStrings strings,
    bool isPersian,
    bool isSaved,
  ) {
    return Theme(
      data: Theme.of(context).copyWith(
        popupMenuTheme: PopupMenuThemeData(
          color: const Color(0xFF141F24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
            side: BorderSide(color: Colors.white.withValues(alpha: 0.12)),
          ),
        ),
      ),
      child: PopupMenuButton<String>(
        tooltip: isPersian
            ? localizedUiText(context, 'عملیات حساب')
            : localizedUiText(context, 'Account options'),
        icon: Icon(Icons.more_vert_rounded, color: Colors.white70, size: 20.sp),
        onSelected: (val) {
          if (_isAccountActionBusy) return;
          switch (val) {
            case 'manage':
              _showFirefoxAccountManagementModal(context, strings);
              break;
            case 'refresh':
              _handleRefreshCredentials();
              break;
            case 'relogin':
              _showFireTunnelLogin();
              break;
            case 'logout':
              _logoutFireTunnel();
              break;
            case 'login':
              _showFireTunnelLogin();
              break;
          }
        },
        itemBuilder: (context) {
          if (isSaved) {
            return [
              PopupMenuItem(
                value: 'manage',
                child: Row(
                  children: [
                    const Icon(
                      Icons.manage_accounts_rounded,
                      size: 18,
                      color: Color(0xFF00D4AA),
                    ),
                    const SizedBox(width: 10),
                    LocalizedText(
                        isPersian ? 'مدیریت حساب' : 'Manage Account'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'refresh',
                child: Row(
                  children: [
                    const Icon(
                      Icons.sync_rounded,
                      size: 18,
                      color: Colors.white70,
                    ),
                    const SizedBox(width: 10),
                    LocalizedText(
                      isPersian
                          ? 'تازه‌سازی وضعیت'
                          : 'Refresh Status',
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'relogin',
                child: Row(
                  children: [
                    const Icon(
                      Icons.refresh_rounded,
                      size: 18,
                      color: Colors.white70,
                    ),
                    const SizedBox(width: 10),
                    LocalizedText(isPersian ? 'ورود مجدد' : 'Re-login'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'logout',
                child: Row(
                  children: [
                    const Icon(
                      Icons.logout_rounded,
                      size: 18,
                      color: Colors.redAccent,
                    ),
                    const SizedBox(width: 10),
                    LocalizedText(
                      isPersian ? 'خروج از حساب' : 'Logout',
                      style: const TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
              ),
            ];
          } else {
            return [
              PopupMenuItem(
                value: 'login',
                child: Row(
                  children: [
                    const Icon(
                      Icons.login_rounded,
                      size: 18,
                      color: Color(0xFF00D4AA),
                    ),
                    const SizedBox(width: 10),
                    LocalizedText(
                        isPersian ? 'ورود به حساب' : 'Sign In'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'refresh',
                child: Row(
                  children: [
                    const Icon(
                      Icons.sync_rounded,
                      size: 18,
                      color: Colors.white70,
                    ),
                    const SizedBox(width: 10),
                    LocalizedText(
                        isPersian ? 'بررسی مجدد' : 'Check status'),
                  ],
                ),
              ),
            ];
          }
        },
      ),
    );
  }

  Widget _buildProtocolSelector(BuildContext context) {
    final isPersian = appState.locale.languageCode == 'fa';
    final protocols = [
      (
        'Auto',
        isPersian ? 'خودکار' : 'Automatic',
        Icons.auto_awesome_rounded,
        const Color(0xFF00E5FF),
        isPersian
            ? 'انتخاب خودکار مسیر اتصال'
            : 'Automatic provider-managed routing',
      ),
    ];

    final selectedProtocol = protocols.firstWhere(
      (item) => item.$1 == appState.protocol,
      orElse: () => protocols.first,
    );
    final (_, selectedTag, selectedIcon, selectedColor, selectedDescription) =
        selectedProtocol;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              for (final item in protocols) ...[
                if (item != protocols.first) SizedBox(width: 8.w),
                _ProtocolChoicePill(
                  name: item.$1,
                  icon: item.$3,
                  color: item.$4,
                  selected: item.$1 == appState.protocol,
                  onTap: () async {
                    if (item.$1 == appState.protocol) return;
                    await appState.setProtocol(item.$1);
                    if (appState.hapticsEnabled) {
                      HapticService.selectionClick();
                    }
                  },
                ),
              ],
            ],
          ),
        ),
        SizedBox(height: 10.h),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 220),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: SizeTransition(
              sizeFactor: animation,
              axisAlignment: -1,
              child: child,
            ),
          ),
          child: Container(
            key: ValueKey(appState.protocol),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: selectedColor.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(13.r),
              border: Border.all(color: selectedColor.withValues(alpha: 0.22)),
            ),
            child: Row(
              children: [
                Icon(selectedIcon, size: 17.sp, color: selectedColor),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocalizedText(
                        selectedTag,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      LocalizedText(
                        selectedDescription,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10.5.sp,
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Icon(
                  Icons.check_circle_rounded,
                  size: 17.sp,
                  color: selectedColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAboutCard(
    BuildContext context,
    AppStrings strings,
    ThemeData theme,
  ) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF00D4AA), Color(0xFF007A65)],
                  ),
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Icon(
                  Icons.rocket_launch_rounded,
                  color: Colors.white,
                  size: 22.sp,
                ),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8.w,
                            runSpacing: 4.h,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'H',
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w800,
                                        color: const Color(0xFFFFC46B),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'armoney',
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.w,
                                  vertical: 2.h,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFC46B)
                                      .withValues(alpha: 0.15),
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                    color: const Color(0xFFFFC46B)
                                        .withValues(alpha: 0.4),
                                    width: 0.8,
                                  ),
                                ),
                                child: LocalizedText(
                                  'by MilMit',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFFFFC46B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3.h),
                          LocalizedText(
                            widget.appState.locale.languageCode == 'fa'
                                ? 'نسخه ۰.۱.۰ · توسعه‌یافته توسط MilMit'
                                : 'Version 0.1.0 · Developed by MilMit',
                            style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 11.sp,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          LocalizedText(
            strings.aboutDescription,
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontSize: 13.sp,
              color: Colors.grey[300],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  void _setTheme(ThemeMode? value) {
    if (value != null) appState.setThemeMode(value);
  }
}

class _ModernSettingsGroup extends StatelessWidget {
  const _ModernSettingsGroup({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.children,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: dark
            ? const Color(0xFF0B303D).withValues(alpha: 0.88)
            : scheme.surface.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: scheme.outlineVariant.withValues(alpha: dark ? 0.42 : 0.7),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(18.w, 18.h, 18.w, 14.h),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(9.w),
                  decoration: BoxDecoration(
                    color: iconColor.withValues(alpha: 0.14),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(icon, color: iconColor, size: 20.sp),
                ),
                SizedBox(width: 14.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocalizedText(
                        title,
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                          color: scheme.onSurface,
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      LocalizedText(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontSize: 12.sp,
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: scheme.outlineVariant.withValues(alpha: 0.45),
          ),
          ...children,
        ],
      ),
    );
  }
}

class _ModernSwitchTile extends StatelessWidget {
  const _ModernSwitchTile({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
    this.badge,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () => onChanged(!value),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(9.w),
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.14),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, color: iconColor, size: 20.sp),
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: LocalizedText(
                          title,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: scheme.onSurface,
                          ),
                        ),
                      ),
                      if (badge != null) ...[
                        SizedBox(width: 8.w),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color:
                                const Color(0xFF00D4AA).withValues(alpha: 0.16),
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                              color: const Color(0xFF00D4AA)
                                  .withValues(alpha: 0.3),
                              width: 0.8,
                            ),
                          ),
                          child: LocalizedText(
                            badge!,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF00D4AA),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  SizedBox(height: 3.h),
                  LocalizedText(
                    subtitle,
                    style: TextStyle(
                      color: scheme.onSurfaceVariant,
                      fontSize: 12.sp,
                      fontFamily: 'SF Pro',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            HarmoneySwitch(value: value, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}

class _ProtocolChoicePill extends StatelessWidget {
  const _ProtocolChoicePill({
    required this.name,
    required this.icon,
    required this.color,
    required this.selected,
    required this.onTap,
  });

  final String name;
  final IconData icon;
  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      label: name,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(13.r),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
            decoration: BoxDecoration(
              gradient: selected
                  ? LinearGradient(
                      colors: [
                        color.withValues(alpha: 0.23),
                        color.withValues(alpha: 0.10),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              color: selected ? null : Colors.white.withValues(alpha: 0.045),
              borderRadius: BorderRadius.circular(13.r),
              border: Border.all(
                color: selected
                    ? color.withValues(alpha: 0.72)
                    : Colors.white.withValues(alpha: 0.09),
                width: selected ? 1.2 : 0.8,
              ),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        color: color.withValues(alpha: 0.14),
                        blurRadius: 14,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedScale(
                  scale: selected ? 1.08 : 1,
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOutBack,
                  child: Icon(
                    icon,
                    size: 16.sp,
                    color: selected ? color : Colors.white60,
                  ),
                ),
                SizedBox(width: 7.w),
                LocalizedText(
                  name,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 12.sp,
                    fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                    color: selected ? Colors.white : Colors.white70,
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 160),
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: selected
                      ? Padding(
                          key: const ValueKey('selected'),
                          padding: EdgeInsetsDirectional.only(start: 6.w),
                          child: Icon(
                            Icons.check_circle_rounded,
                            size: 14.sp,
                            color: color,
                          ),
                        )
                      : const SizedBox(key: ValueKey('unselected'), width: 0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
