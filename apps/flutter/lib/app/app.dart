import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/theme/app_icons.dart';
import '../core/theme/app_theme.dart';
import '../core/vpn_core.dart';
import '../core/vpn_core_providers.dart';
import '../core/harmoney_vpn_bridge.dart';
import '../core/vpn_notifications.dart';
import '../core/windows_tray_bridge.dart';
import '../features/hotspot/hotspot_page.dart';
import '../features/locations/locations_page.dart';
import '../features/protection/protection_page.dart';
import '../features/settings/settings_page.dart';
import '../features/shared/harmoney_pro_download_card.dart';
import '../features/split_tunnel/split_tunnel_page.dart';
import '../features/statistics/statistics_page.dart';
import '../l10n/app_localizations.dart';
import '../modules/main/presentation/screens/main_screen.dart';
import '../modules/speed_test/presentation/screens/speed_test_diagnostics_page.dart';
import '../shared/layout/navbar/harmoney_navbar.dart';
import 'app_state.dart';

import 'package:milmit_vpn_client/app/localized_text.dart';

class VpnClientApp extends StatefulWidget {
  const VpnClientApp({super.key, required this.appState});

  final AppState appState;

  @override
  State<VpnClientApp> createState() => _VpnClientAppState();
}

class _VpnClientAppState extends State<VpnClientApp> {
  bool _showSplash = !_hasAndroidSystemSplash;

  static bool get _hasAndroidSystemSplash {
    if (!io.Platform.isAndroid) return false;
    final match =
        RegExp(r'API (\d+)').firstMatch(io.Platform.operatingSystemVersion);
    final api = int.tryParse(match?.group(1) ?? '') ?? 0;
    return api >= 31;
  }

  @override
  void initState() {
    super.initState();
    widget.appState.addListener(_refresh);
  }

  @override
  void dispose() {
    widget.appState.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final state = widget.appState;

    final isDesktop =
        io.Platform.isLinux || io.Platform.isMacOS || io.Platform.isWindows;

    return ScreenUtilInit(
      designSize: isDesktop ? const Size(1000, 700) : const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      enableScaleWH: () => !isDesktop,
      enableScaleText: () => !isDesktop,
      fontSizeResolver: (fontSize, instance) => isDesktop
          ? fontSize.toDouble()
          : FontSizeResolvers.width(fontSize, instance),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Harmoney',
          themeMode: state.themeMode,
          locale: state.locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          builder: (context, child) {
            final rtl = state.locale.languageCode == 'fa' ||
                state.locale.languageCode == 'ar';
            return Directionality(
              textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
              child: child ?? const SizedBox.shrink(),
            );
          },
          home: _showSplash
              ? HarmoneySplash(
                  onFinished: () {
                    if (mounted) setState(() => _showSplash = false);
                  },
                )
              : AppShell(appState: state),
        );
      },
    );
  }
}

class HarmoneySplash extends StatefulWidget {
  const HarmoneySplash({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<HarmoneySplash> createState() => _HarmoneySplashState();
}

class _HarmoneySplashState extends State<HarmoneySplash>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _entrance;
  late final Animation<double> _pulse;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
    _entrance = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0, .72, curve: Curves.easeOutCubic),
    );
    _pulse = CurvedAnimation(
      parent: _controller,
      curve: const Interval(.2, 1, curve: Curves.easeInOut),
    );
    _controller.forward().whenComplete(widget.onFinished);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF092B3B),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final scale = .75 + (_entrance.value * .25);
          return Center(
            child: Opacity(
              opacity: _entrance.value.clamp(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.scale(
                    scale: scale,
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AppIcons.shieldAnime(width: 120, height: 120),
                          AppIcons.harmoneyStandby(width: 54, height: 54),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'H',
                          style: TextStyle(
                            fontSize: 38,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFFFC46B),
                          ),
                        ),
                        TextSpan(
                          text: 'armoney',
                          style: TextStyle(
                            fontSize: 34,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  LocalizedText(
                    'A calmer connection. A brighter world.',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: .65),
                      fontSize: 13,
                      fontFamily: 'Lato',
                      letterSpacing: .4,
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    width: 76,
                    child: LinearProgressIndicator(
                      minHeight: 3,
                      borderRadius: BorderRadius.circular(3),
                      backgroundColor: Colors.white.withValues(alpha: .12),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFF61F2C2),
                      ),
                      value: _pulse.value,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AppShell extends ConsumerStatefulWidget {
  const AppShell({super.key, required this.appState});

  final AppState appState;

  @override
  ConsumerState<AppShell> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShell> {
  static bool _linuxTrayHandlerInstalled = false;
  int _index = 0;
  int _previousIndex = 0;
  VpnServer? _selectedServer;
  static const _lastSelectedServerKey = 'last_selected_vpn_server';

  @override
  void initState() {
    super.initState();
    unawaited(_restoreSelectedServer());
  }

  Future<void> _restoreSelectedServer() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final encoded = prefs.getString(_lastSelectedServerKey);
      if (encoded == null) return;
      final value = jsonDecode(encoded);
      if (value is! Map<String, dynamic>) return;
      final id = value['id'];
      final providerId = value['providerId'];
      if (id is! String || id.isEmpty || providerId is! String) return;
      final server = VpnServer(
        id: id,
        providerId: providerId,
        country: value['country'] as String? ?? '',
        city: value['city'] as String? ?? '',
        hostname: value['hostname'] as String? ?? '',
        countryCode: value['countryCode'] as String?,
        latencyMs: value['latencyMs'] as int?,
        fingerprint: value['fingerprint'] as String? ?? '',
        available: value['available'] as bool? ?? true,
        subscriptionNodeId: value['subscriptionNodeId'] as String?,
        subscriptionId: value['subscriptionId'] as String?,
      );
      if (mounted) setState(() => _selectedServer = server);
    } catch (_) {
      // Ignore an unreadable saved route and let the user pick another server.
    }
  }

  Future<void> _persistSelectedServer(VpnServer server) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        _lastSelectedServerKey,
        jsonEncode({
          'id': server.id,
          'providerId': server.providerId,
          'country': server.country,
          'city': server.city,
          'hostname': server.hostname,
          'countryCode': server.countryCode,
          'latencyMs': server.latencyMs,
          'fingerprint': server.fingerprint,
          'available': server.available,
          'subscriptionNodeId': server.subscriptionNodeId,
          'subscriptionId': server.subscriptionId,
        }),
      );
    } catch (_) {
      // The active connection should not depend on local preference storage.
    }
  }

  void _select(int value) {
    if (_index == value) return;
    setState(() {
      _previousIndex = _index;
      _index = value;
    });
  }

  void _connectTo(VpnServer server) {
    if (server.providerId.isNotEmpty &&
        server.providerId != widget.appState.provider) {
      widget.appState.setProvider(server.providerId);
    }
    setState(() {
      _previousIndex = _index;
      _selectedServer = server;
      _index = 0; // Back to main screen
    });
    unawaited(_persistSelectedServer(server));
  }

  void _selectSubscription(VpnServer server) {
    if (server.providerId.isNotEmpty &&
        server.providerId != widget.appState.provider) {
      widget.appState.setProvider(server.providerId);
    }
    setState(() => _selectedServer = server);
    unawaited(_persistSelectedServer(server));
  }

  Future<void> _toggleFromWindowsTray() async {
    final core = ref.read(vpnCoreProvider);
    final current = ref.read(connectionStateProvider).asData?.value;
    if (current?.isTransitioning == true) {
      await core.cancelConnect();
    } else if (current?.isConnected == true) {
      await core.disconnect();
    } else {
      final selected = _selectedServer?.providerId == widget.appState.provider
          ? _selectedServer
          : null;
      await core.connect(
        providerId: selected?.providerId ?? widget.appState.provider,
        server: selected,
        protocol: widget.appState.protocol.toLowerCase(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.appState;
    ref.watch(vpnNotificationsProvider).setLocale(state.locale);
    final connection = ref.watch(connectionStateProvider).asData?.value;
    if (io.Platform.isLinux && !_linuxTrayHandlerInstalled) {
      _linuxTrayHandlerInstalled = true;
      unawaited(HarmoneyBridge().setNativeActionHandler((call) async {
        if (call.method == 'openServerList') _select(1);
        return null;
      }));
    }
    if (io.Platform.isWindows) {
      unawaited(WindowsTrayBridge.configure(
        onToggle: _toggleFromWindowsTray,
        onOpenApp: () => _select(0),
        onOpenServers: () => _select(1),
      ));
      unawaited(WindowsTrayBridge.update(connection));
    }

    final pages = [
      // 0: Main Harmoney Screen
      MainScreen(
        appState: state,
        selectedServer: _selectedServer,
        onOpenLocations: () => _select(1),
        onOpenSpeedTest: () => _select(2),
        onOpenProtection: () => _select(3),
        onOpenSettings: () => _select(4),
      ),
      // 1: Locations & Server List
      LocationsPage(
        appState: state,
        onServerSelected: _connectTo,
        onSubscriptionSelected: _selectSubscription,
      ),
      // 2: Speed Test & Network Diagnostics
      const SpeedTestDiagnosticsPage(),
      // 3: Protection & Rules Suite
      _ProtectionAndRulesView(appState: state),
      // 4: Settings & Configuration
      SettingsPage(appState: state),
    ];

    final isForward = _index >= _previousIndex;

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFF092B3B),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 320),
        switchInCurve: Curves.easeOutCubic,
        switchOutCurve: Curves.easeInCubic,
        transitionBuilder: (child, animation) {
          final isIncoming = child.key == ValueKey<int>(_index);
          final beginX = isIncoming
              ? (isForward ? 0.04 : -0.04)
              : (isForward ? -0.04 : 0.04);

          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(beginX, 0),
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.98, end: 1.0).animate(animation),
                child: child,
              ),
            ),
          );
        },
        child: KeyedSubtree(key: ValueKey<int>(_index), child: pages[_index]),
      ),
      bottomNavigationBar: HarmoneyNavBar(
        currentIndex: _index,
        onSelect: _select,
      ),
    );
  }
}

class _ProtectionAndRulesView extends StatefulWidget {
  final AppState appState;

  const _ProtectionAndRulesView({required this.appState});

  @override
  State<_ProtectionAndRulesView> createState() =>
      _ProtectionAndRulesViewState();
}

class _ProtectionAndRulesViewState extends State<_ProtectionAndRulesView> {
  int _subTab = io.Platform.isWindows ? 1 : 0;
  int _prevSubTab = 0;

  void _setSubTab(int index) {
    if (_subTab == index) return;
    setState(() {
      _prevSubTab = _subTab;
      _subTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPersian = widget.appState.locale.languageCode == 'fa';

    const subPages = [
      SplitTunnelPage(),
      ProtectionPage(),
      HotspotPage(),
      StatisticsPage(),
    ];

    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xFF0A2230).withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xFF00D4AA).withValues(alpha: 0.2),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!io.Platform.isWindows)
                      _SubTabPill(
                        label: isPersian
                            ? 'تونل تفکیکی و بایپس'
                            : 'Split Tunnel & Bypass',
                        selected: _subTab == 0,
                        icon: Icons.alt_route_rounded,
                        onTap: () => _setSubTab(0),
                      ),
                    if (!io.Platform.isWindows) const SizedBox(width: 4),
                    _SubTabPill(
                      label: io.Platform.isWindows
                          ? (isPersian
                              ? 'بایپس کشور و برنامه'
                              : 'Country & App Bypass')
                          : (isPersian
                              ? 'امنیت و کیل‌سوئیچ'
                              : 'Security & Kill Switch'),
                      selected: _subTab == 1,
                      icon: io.Platform.isWindows
                          ? Icons.public_rounded
                          : Icons.security_rounded,
                      onTap: () => _setSubTab(1),
                    ),
                    const SizedBox(width: 4),
                    _SubTabPill(
                      label: isPersian ? 'اشتراک هات‌اسپات' : 'Hotspot Shield',
                      selected: _subTab == 2,
                      icon: Icons.wifi_tethering_rounded,
                      onTap: () => _setSubTab(2),
                    ),
                    const SizedBox(width: 4),
                    _SubTabPill(
                      label:
                          isPersian ? 'نمودار و آمار ترافیک' : 'Traffic Stats',
                      selected: _subTab == 3,
                      icon: Icons.bar_chart_rounded,
                      onTap: () => _setSubTab(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 2, 16, 10),
            child: const HarmoneyProDownloadCard(),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 280),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeInCubic,
              transitionBuilder: (child, animation) {
                final isIncoming = child.key == ValueKey<int>(_subTab);
                final isForward = _subTab >= _prevSubTab;
                final beginX = isIncoming
                    ? (isForward ? 0.05 : -0.05)
                    : (isForward ? -0.05 : 0.05);

                return SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(beginX, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              child: KeyedSubtree(
                key: ValueKey<int>(_subTab),
                child: subPages[_subTab],
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class _SubTabPill extends StatefulWidget {
  final String label;
  final bool selected;
  final IconData icon;
  final VoidCallback onTap;

  const _SubTabPill({
    required this.label,
    required this.selected,
    required this.icon,
    required this.onTap,
  });

  @override
  State<_SubTabPill> createState() => _SubTabPillState();
}

class _SubTabPillState extends State<_SubTabPill> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            gradient: widget.selected
                ? LinearGradient(
                    colors: [
                      const Color(0xFF00D4AA).withValues(alpha: 0.35),
                      const Color(0xFF00E5FF).withValues(alpha: 0.20),
                    ],
                  )
                : (_isHovered
                    ? LinearGradient(
                        colors: [
                          Colors.white.withValues(alpha: 0.08),
                          Colors.white.withValues(alpha: 0.04),
                        ],
                      )
                    : null),
            color: widget.selected
                ? null
                : (_isHovered ? null : Colors.transparent),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: widget.selected
                  ? const Color(0xFF00D4AA).withValues(alpha: 0.8)
                  : (_isHovered
                      ? Colors.white.withValues(alpha: 0.2)
                      : Colors.transparent),
              width: 1,
            ),
            boxShadow: widget.selected
                ? [
                    BoxShadow(
                      color: const Color(0xFF00D4AA).withValues(alpha: 0.25),
                      blurRadius: 10,
                      spreadRadius: 0.5,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 16,
                color: widget.selected
                    ? const Color(0xFF61F2C2)
                    : (_isHovered ? Colors.white : Colors.white60),
              ),
              const SizedBox(width: 6),
              LocalizedText(
                widget.label,
                style: TextStyle(
                  color: widget.selected
                      ? Colors.white
                      : (_isHovered ? Colors.white : Colors.white70),
                  fontSize: 12.sp.clamp(11.0, 14.0),
                  fontFamily: 'Lato',
                  fontWeight:
                      widget.selected ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
