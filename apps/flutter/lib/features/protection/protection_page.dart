import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../core/country_bypass_bridge.dart';
import '../../core/local_cache_service.dart';
import '../../core/linux_platform_controls.dart';
import '../../core/mobile_vpn_bridge.dart';
import '../../core/platform_capability_matrix.dart';
import '../../core/windows_per_app_split_tunnel.dart';

import 'package:milmit_vpn_client/app/localized_text.dart';

class ProtectionPage extends StatefulWidget {
  const ProtectionPage({super.key});
  @override
  State<ProtectionPage> createState() => _ProtectionPageState();
}

class _ProtectionPageState extends State<ProtectionPage> {
  final _controls = LinuxPlatformControls();
  final _custom = TextEditingController();
  final _routeTarget = TextEditingController(text: 'digikala.com');
  final _explainTarget = TextEditingController(text: 'varzesh3.com');
  Map<String, dynamic>? _routing;
  Map<String, dynamic>? _desktop;
  Map<String, dynamic>? _routeResult;
  Map<String, dynamic>? _explainResult;
  Map<String, dynamic>? _verifyResult;
  List<Map<String, dynamic>> _rules = const [];
  List<Map<String, dynamic>> _policies = const [];
  bool _loading = true;
  String? _busyAction;
  String? _error;

  bool get _iranEnabled => _routing?['routing_mode'] == 'iran_direct';
  bool get _lockdown => _desktop?['lockdown'] == true;
  bool get _allowIran => _desktop?['lockdown_allow_iran'] != false;

  @override
  void initState() {
    super.initState();
    if (Platform.isLinux) _refresh();
  }

  @override
  void dispose() {
    _custom.dispose();
    _routeTarget.dispose();
    _explainTarget.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    try {
      final values = await Future.wait([
        _controls.runVpnAction('routing-mode-status'),
        _controls.runVpnAction('custom-rules-get'),
        _controls.runVpnAction('desktop-status'),
        _controls.routerStatus().catchError((_) => <String, dynamic>{}),
      ]);
      if (!mounted) return;
      setState(() {
        _routing = values[0];
        _rules = (values[1]['rules'] as List? ?? const [])
            .map((value) => Map<String, dynamic>.from(value as Map))
            .toList(growable: false);
        _desktop = values[2];
        final routerCfg = values[3]['config'] as Map? ?? const {};
        _policies = (routerCfg['policies'] as List? ?? const [])
            .map((v) => Map<String, dynamic>.from(v as Map))
            .toList();
        _error = null;
      });
    } catch (error) {
      if (mounted) setState(() => _error = error.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<Map<String, dynamic>?> _run(
    String action, [
    List<String> args = const [],
  ]) async {
    if (_busyAction != null) return null;
    setState(() {
      _busyAction = action;
      _error = null;
    });
    try {
      return await _controls.runVpnAction(action, args);
    } catch (error) {
      if (mounted) setState(() => _error = error.toString());
      return null;
    } finally {
      if (mounted) setState(() => _busyAction = null);
    }
  }

  Future<void> _addRule() async {
    final target = _custom.text.trim();
    if (target.isEmpty) return;
    final value = await _run('custom-rules-add', [target]);
    if (value != null) {
      _custom.clear();
      await _refresh();
    }
  }

  Future<void> _removeRule(String target) async {
    final value = await _run('custom-rules-remove', [target]);
    if (value != null) await _refresh();
  }

  Future<void> _testRoute() async {
    final target = _routeTarget.text.trim();
    if (target.isEmpty) return;
    final result = await _run('route-test', [target]);
    if (mounted && result != null) setState(() => _routeResult = result);
  }

  Future<void> _explainRoute() async {
    final target = _explainTarget.text.trim();
    if (target.isEmpty) return;
    final result = await _run('route-explain', [target]);
    if (mounted && result != null) setState(() => _explainResult = result);
  }

  Future<void> _addPolicyDialog() async {
    final targetCtrl = TextEditingController();
    var policy = 'direct';
    var scope = 'both';

    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDlg) => AlertDialog(
          title: const LocalizedText('Add Routing Policy Rule'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: targetCtrl,
                decoration: InputDecoration(
                  labelText: localizedUiText(
                    context,
                    'Target Domain or CIDR (e.g. 1.1.1.1/32)',
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                initialValue: policy,
                decoration: InputDecoration(
                  labelText: localizedUiText(context, 'Policy'),
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'direct',
                    child: LocalizedText('Direct (Bypass VPN)'),
                  ),
                  DropdownMenuItem(
                    value: 'vpn',
                    child: LocalizedText('Force VPN'),
                  ),
                  DropdownMenuItem(
                    value: 'block',
                    child: LocalizedText('Block Destination'),
                  ),
                ],
                onChanged: (val) => setDlg(() => policy = val!),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                initialValue: scope,
                decoration: InputDecoration(
                  labelText: localizedUiText(context, 'Scope'),
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'both',
                    child: LocalizedText('Host and Hotspot clients'),
                  ),
                  DropdownMenuItem(
                    value: 'ubuntu',
                    child: LocalizedText('Host machine only'),
                  ),
                  DropdownMenuItem(
                    value: 'hotspot',
                    child: LocalizedText('Hotspot clients only'),
                  ),
                ],
                onChanged: (val) => setDlg(() => scope = val!),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const LocalizedText('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const LocalizedText('Add Policy'),
            ),
          ],
        ),
      ),
    );

    if (result == true && targetCtrl.text.trim().isNotEmpty) {
      await _run('policy-add', [targetCtrl.text.trim(), policy, scope]);
      await _refresh();
    }
  }

  Future<void> _removePolicy(String target, String scope) async {
    await _run('policy-remove', [target, scope]);
    await _refresh();
  }

  Future<void> _verifyLive() async {
    final result = await _run('full-live-test');
    if (mounted && result != null) setState(() => _verifyResult = result);
  }

  Future<void> _applySafe() async {
    final result = await _run('apply-safe');
    if (mounted && result != null) {
      setState(() => _verifyResult = result);
      await _refresh();
    }
  }

  Future<void> _setLockdown(bool enabled) async {
    final result = await _run('lockdown', [enabled ? '1' : '0']);
    if (result != null) await _refresh();
  }

  Future<void> _setAllowIran(bool enabled) async {
    final result = await _run('lockdown-allow-iran', [enabled ? '1' : '0']);
    if (result != null) {
      await _run('lockdown-apply');
      await _refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) return const _AndroidProtectionView();
    if (Platform.isWindows) {
      final isPersian = Localizations.localeOf(context).languageCode == 'fa';
      return SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            LocalizedText(
              isPersian ? 'بایپس کشور و برنامه' : 'Country & App Bypass',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            LocalizedText(
              isPersian
                  ? 'محدوده‌های IPv4 کشورها پس از اتصال مجدد از اینترنت محلی عبور می‌کنند. بایپس برنامه‌ها از مسیر فیزیکی ویندوز استفاده می‌کند و به سرویس MilMit نیاز دارد.'
                  : 'Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.',
            ),
            const SizedBox(height: 16),
            const CountryBypassCard(),
          ],
        ),
      );
    }
    if (!Platform.isLinux) {
      final platName = PlatformCapabilityMatrix.currentPlatformName();
      return SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.security, size: 64, color: Colors.grey),
                const SizedBox(height: 16),
                LocalizedText(
                  'Advanced System Routing on $platName',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                LocalizedText(
                  PlatformCapabilityMatrix.getCapability(
                    PlatformFeatureKey.iranBypassAndCustomRouting,
                  ).reason,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            LocalizedText(
              'Advanced Routing & Protection',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            const LocalizedText(
              'Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.',
            ),
            if (_loading)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: LinearProgressIndicator(),
              ),
            if (_error != null)
              Card(
                color: Theme.of(context).colorScheme.errorContainer,
                child: ListTile(
                  leading: const Icon(Icons.error_outline),
                  title: const LocalizedText('Operation failed'),
                  subtitle: LocalizedText(_error!),
                ),
              ),
            const SizedBox(height: 12),

            // Country Bypass Section
            CountryBypassCard(
              onSettingsChanged: () {
                _refresh();
              },
            ),
            const SizedBox(height: 12),

            // Custom Bypass Rules Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LocalizedText(
                                'Custom Bypass Rules',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              LocalizedText(
                                'Domains, IPv4 addresses or CIDRs that always bypass the VPN',
                              ),
                            ],
                          ),
                        ),
                        Chip(label: LocalizedText('${_rules.length} added')),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _custom,
                            onSubmitted: (_) => _addRule(),
                            decoration: InputDecoration(
                              labelText: localizedUiText(
                                context,
                                'Domain, IPv4 or CIDR',
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        FilledButton.icon(
                          onPressed: _busyAction == null ? _addRule : null,
                          icon: const Icon(Icons.add),
                          label: const LocalizedText('Add'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    if (_rules.isEmpty)
                      const LocalizedText('No custom bypass rules.')
                    else
                      for (final rule in _rules)
                        ListTile(
                          dense: true,
                          leading: const Icon(Icons.alt_route),
                          title: LocalizedText('${rule['target']}'),
                          subtitle: LocalizedText(
                            '${rule['type'] ?? 'rule'} · ${(rule['resolved_ips'] as List? ?? const []).join(', ')}',
                          ),
                          trailing: IconButton(
                            tooltip: localizedUiText(context, 'Remove'),
                            onPressed: _busyAction == null
                                ? () => _removeRule('${rule['target']}')
                                : null,
                            icon: const Icon(Icons.delete_outline),
                          ),
                        ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Advanced Policy Rules Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LocalizedText(
                                'Advanced Policy Rules',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              LocalizedText(
                                'Route specific destinations through Direct, Force VPN, or Block.',
                              ),
                            ],
                          ),
                        ),
                        FilledButton.tonalIcon(
                          onPressed: _busyAction == null
                              ? _addPolicyDialog
                              : null,
                          icon: const Icon(Icons.add_road),
                          label: const LocalizedText('Add Policy'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    if (_policies.isEmpty)
                      const LocalizedText(
                        'No advanced policy rules configured.',
                      )
                    else
                      for (final pol in _policies)
                        ListTile(
                          dense: true,
                          leading: Icon(
                            pol['policy'] == 'block'
                                ? Icons.block
                                : pol['policy'] == 'vpn'
                                ? Icons.vpn_lock
                                : Icons.call_split,
                            color: pol['policy'] == 'block'
                                ? Colors.red
                                : Colors.blue,
                          ),
                          title: LocalizedText(
                            '${pol['target']} (${pol['policy']?.toString().toUpperCase()})',
                          ),
                          subtitle: LocalizedText(
                            'Scope: ${pol['scope']} · ${(pol['resolved'] as List? ?? const []).join(', ')}',
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: _busyAction == null
                                ? () => _removePolicy(
                                    '${pol['target']}',
                                    '${pol['scope'] ?? 'both'}',
                                  )
                                : null,
                          ),
                        ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Route Explain Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LocalizedText(
                      'Route Explain',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const LocalizedText(
                      'Explain why a destination routes via VPN or Direct ISP, with rule priority matching.',
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _explainTarget,
                            decoration: InputDecoration(
                              labelText: localizedUiText(
                                context,
                                'Domain or IP to explain',
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        FilledButton.tonalIcon(
                          onPressed: _busyAction == null ? _explainRoute : null,
                          icon: const Icon(Icons.help_outline),
                          label: const LocalizedText('Explain'),
                        ),
                      ],
                    ),
                    if (_explainResult != null) ...[
                      const SizedBox(height: 12),
                      for (final raw
                          in (_explainResult!['results'] as List? ?? const []))
                        Builder(
                          builder: (context) {
                            final item = Map<String, dynamic>.from(raw as Map);
                            return Card(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surfaceContainerHighest,
                              child: ListTile(
                                title: LocalizedText('${item['address']}'),
                                subtitle: LocalizedText(
                                  'Policy: ${item['policy']} · Reason: ${item['reason']} · Actual: ${item['actual']}\nRoute: ${item['route']}',
                                ),
                              ),
                            );
                          },
                        ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Route Test Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LocalizedText(
                      'Route test',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _routeTarget,
                            decoration: InputDecoration(
                              labelText: localizedUiText(
                                context,
                                'Domain or IP',
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        FilledButton.tonalIcon(
                          onPressed: _busyAction == null ? _testRoute : null,
                          icon: const Icon(Icons.route),
                          label: const LocalizedText('Test'),
                        ),
                      ],
                    ),
                    if (_routeResult != null) ...[
                      const SizedBox(height: 12),
                      for (final raw
                          in (_routeResult!['results'] as List? ?? const []))
                        Builder(
                          builder: (context) {
                            final row = Map<String, dynamic>.from(raw as Map);
                            final matches = row['intended'] == row['actual'];
                            return ListTile(
                              leading: Icon(
                                matches
                                    ? Icons.check_circle
                                    : Icons.warning_amber,
                                color: matches ? Colors.green : Colors.orange,
                              ),
                              title: LocalizedText('${row['address']}'),
                              subtitle: LocalizedText(
                                'Intended: ${row['intended']}  •  Actual: ${row['actual']}  •  Iran: ${row['iran']}',
                              ),
                            );
                          },
                        ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Routing Verification & Safe Apply Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LocalizedText(
                      'Route Table & XFRM Verification',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const LocalizedText(
                      'Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.',
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        FilledButton.tonalIcon(
                          onPressed: _busyAction == null ? _verifyLive : null,
                          icon: const Icon(Icons.verified_outlined),
                          label: const LocalizedText('Live Verification'),
                        ),
                        FilledButton.tonalIcon(
                          onPressed: _busyAction == null ? _applySafe : null,
                          icon: const Icon(Icons.security_update_good_outlined),
                          label: const LocalizedText('Safe Apply & LKG'),
                        ),
                      ],
                    ),
                    if (_verifyResult != null) ...[
                      const SizedBox(height: 12),
                      SelectableText(
                        _verifyResult!['ok'] == true
                            ? localizedUiText(
                                context,
                                '✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)',
                              )
                            : localizedUiText(
                                context,
                                '⚠ Notice: ${_verifyResult!['error'] ?? _verifyResult.toString()}',
                              ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Lockdown (Kill Switch) Card
            Card(
              child: Column(
                children: [
                  SwitchListTile(
                    secondary: const Icon(Icons.lock_outline),
                    title: const LocalizedText('Lockdown mode (Kill Switch)'),
                    subtitle: const LocalizedText(
                      'Block all internet leaks when the VPN drops unexpectedly',
                    ),
                    value: _lockdown,
                    onChanged: _busyAction == null ? _setLockdown : null,
                  ),
                  SwitchListTile(
                    secondary: const Icon(Icons.flag_outlined),
                    title: const LocalizedText(
                      'Allow Iran traffic during Lockdown',
                    ),
                    subtitle: const LocalizedText(
                      'Keep domestic services and banking reachable when the VPN drops',
                    ),
                    value: _allowIran,
                    onChanged: _lockdown && _busyAction == null
                        ? _setAllowIran
                        : null,
                  ),
                  ListTile(
                    leading: Icon(
                      _iranEnabled
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: _iranEnabled ? Colors.blue : null,
                    ),
                    title: const LocalizedText('Protection HUD'),
                    subtitle: LocalizedText(
                      'Iran Bypass: ${_iranEnabled ? 'ON' : 'Full tunnel'}  •  Lockdown: ${_lockdown ? 'ON' : 'OFF'}',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AndroidProtectionView extends StatefulWidget {
  const _AndroidProtectionView();

  @override
  State<_AndroidProtectionView> createState() => _AndroidProtectionViewState();
}

class _AndroidProtectionViewState extends State<_AndroidProtectionView>
    with WidgetsBindingObserver {
  Map<String, dynamic> _state = const {};
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refresh();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _refresh();
  }

  Future<void> _refresh() async {
    try {
      final value = await MobileVpnBridge.protectionState();
      if (mounted) {
        setState(() {
          _state = value;
          _error = null;
        });
      }
    } catch (error) {
      if (mounted) setState(() => _error = error.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _setDns(bool enabled) async {
    setState(() => _loading = true);
    _state = await MobileVpnBridge.setDnsProtection(enabled);
    if (mounted) setState(() => _loading = false);
  }

  Future<void> _setIpv6(bool enabled) async {
    setState(() => _loading = true);
    _state = await MobileVpnBridge.setIpv6Protection(enabled);
    if (mounted) setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
    child: RefreshIndicator(
      onRefresh: _refresh,
      child: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          LocalizedText(
            'Android Protection',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          const LocalizedText(
            'Protection settings are applied by Android VpnService and take effect after reconnecting.',
          ),
          if (_loading) const LinearProgressIndicator(),
          if (_error != null)
            Card(
              child: ListTile(
                leading: const Icon(Icons.error_outline),
                subtitle: LocalizedText(_error!),
              ),
            ),
          const SizedBox(height: 12),
          const CountryBypassCard(),
          const SizedBox(height: 12),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  secondary: const Icon(Icons.dns_outlined),
                  title: const LocalizedText('Secure VPN DNS'),
                  subtitle: LocalizedText(
                    _state['firefox_dns'] == null
                        ? 'Tunnel-managed DNS; reconnect to apply'
                        : 'Custom tunnel DNS: ${_state['firefox_dns']}',
                  ),
                  value: _state['dns_protection'] != false,
                  onChanged: _loading ? null : _setDns,
                ),
                SwitchListTile(
                  secondary: const Icon(Icons.security_outlined),
                  title: const LocalizedText('IPv6 leak protection'),
                  subtitle: const LocalizedText(
                    'Route IPv6 through supported tunnels; reconnect to apply',
                  ),
                  value: _state['ipv6_protection'] != false,
                  onChanged: _loading ? null : _setIpv6,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.shield_outlined,
                    color: _state['always_on'] == true ? Colors.green : null,
                  ),
                  title: const LocalizedText('Always-on VPN'),
                  subtitle: LocalizedText(
                    _state['always_on'] == true
                        ? 'Enabled for Harmoney'
                        : 'Disabled',
                  ),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: MobileVpnBridge.openVpnSettings,
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_outline,
                    color: _state['lockdown'] == true ? Colors.green : null,
                  ),
                  title: const LocalizedText('Block connections without VPN'),
                  subtitle: LocalizedText(
                    _state['lockdown'] == true
                        ? 'Android Lockdown is active'
                        : 'Enable Lockdown in Android VPN settings',
                  ),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: MobileVpnBridge.openVpnSettings,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Card(
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: LocalizedText('Protocol coverage'),
              subtitle: LocalizedText(
                'Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class CountryBypassCard extends StatefulWidget {
  final VoidCallback? onSettingsChanged;

  const CountryBypassCard({super.key, this.onSettingsChanged});

  @override
  State<CountryBypassCard> createState() => _CountryBypassCardState();
}

class _CountryBypassCardState extends State<CountryBypassCard> {
  final _searchController = TextEditingController();
  CountryBypassState _state = CountryBypassState.initial();
  bool _loading = true;
  bool _updatingRules = false;
  String _filter = '';
  bool _perAppEnabled = false;
  bool _loadingPerApp = true;
  List<String> _perAppExecutables = const [];

  @override
  void initState() {
    super.initState();
    _loadState();
    if (Platform.isWindows) _loadPerAppSettings();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadPerAppSettings() async {
    try {
      await LocalCacheService.instance.init();
      final paths = LocalCacheService.instance.getWindowsPerAppExecutables();
      if (!mounted) return;
      setState(() {
        _perAppExecutables = paths;
        _perAppEnabled = LocalCacheService.instance.getWindowsPerAppEnabled();
        _loadingPerApp = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() => _loadingPerApp = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: LocalizedText('Could not load app bypass settings: $error'),
        ),
      );
    }
  }

  Future<void> _setPerAppEnabled(bool enabled) async {
    if (enabled && _perAppExecutables.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: LocalizedText(
            Localizations.localeOf(context).languageCode == 'fa'
                ? 'اول یک برنامه اضافه کن.'
                : 'Add an application before enabling app bypass.',
          ),
        ),
      );
      return;
    }
    setState(() => _loadingPerApp = true);
    try {
      await WindowsPerAppSplitTunnel.configure(
        enabled: enabled,
        executables: _perAppExecutables,
      );
      await LocalCacheService.instance.saveWindowsPerAppEnabled(enabled);
      if (!mounted) return;
      setState(() {
        _perAppEnabled = enabled;
        _loadingPerApp = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() => _loadingPerApp = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: LocalizedText('Could not update app bypass: $error')),
      );
    }
  }

  Future<void> _addPerAppExecutable() async {
    try {
      final result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: const ['exe'],
        dialogTitle: 'Choose an application to bypass the VPN',
      );
      final path = result?.files.single.path;
      if (path == null || path.isEmpty) return;
      if (_perAppExecutables.any(
        (item) => item.toLowerCase() == path.toLowerCase(),
      )) {
        return;
      }
      final next = [..._perAppExecutables, path];
      if (_perAppEnabled) {
        await WindowsPerAppSplitTunnel.configure(
          enabled: true,
          executables: next,
        );
      }
      await LocalCacheService.instance.saveWindowsPerAppExecutables(next);
      if (mounted) setState(() => _perAppExecutables = next);
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: LocalizedText('Could not add application: $error')),
      );
    }
  }

  Future<void> _removePerAppExecutable(String path) async {
    final next = _perAppExecutables
        .where((item) => item.toLowerCase() != path.toLowerCase())
        .toList();
    final keepEnabled = _perAppEnabled && next.isNotEmpty;
    try {
      if (_perAppEnabled) {
        await WindowsPerAppSplitTunnel.configure(
          enabled: keepEnabled,
          executables: next,
        );
      }
      await LocalCacheService.instance.saveWindowsPerAppExecutables(next);
      if (_perAppEnabled && !keepEnabled) {
        await LocalCacheService.instance.saveWindowsPerAppEnabled(false);
      }
      if (mounted) {
        setState(() {
          _perAppExecutables = next;
          _perAppEnabled = keepEnabled;
        });
      }
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: LocalizedText('Could not remove application: $error'),
        ),
      );
    }
  }

  Future<void> _loadState() async {
    final s = await CountryBypassBridge.instance.getState();
    if (mounted) {
      setState(() {
        _state = s;
        _loading = false;
      });
    }
  }

  Future<void> _toggleEnabled(bool value) async {
    setState(() => _loading = true);
    final s = await CountryBypassBridge.instance.setEnabled(value);
    if (Platform.isLinux) {
      final hasIran = s.selectedCountries.contains('IR');
      await LinuxPlatformControls()
          .runVpnAction('set-routing-mode', [
            hasIran && value ? 'iran_direct' : 'vpn_all',
          ])
          .catchError((_) => <String, dynamic>{});
    }
    if (mounted) {
      setState(() {
        _state = s;
        _loading = false;
      });
      widget.onSettingsChanged?.call();
    }
  }

  Future<void> _toggleCountry(String code) async {
    final current = List<String>.from(_state.selectedCountries);
    if (current.contains(code)) {
      current.remove(code);
    } else {
      current.add(code);
    }
    final s = await CountryBypassBridge.instance.setSelectedCountries(current);
    if (Platform.isLinux && _state.enabled) {
      final hasIran = s.selectedCountries.contains('IR');
      await LinuxPlatformControls()
          .runVpnAction('set-routing-mode', [
            hasIran ? 'iran_direct' : 'vpn_all',
          ])
          .catchError((_) => <String, dynamic>{});
    }
    if (mounted) {
      setState(() => _state = s);
      widget.onSettingsChanged?.call();
    }
  }

  Future<void> _selectAll() async {
    final allCodes = _state.availableCountries.map((c) => c.code).toList();
    final s = await CountryBypassBridge.instance.setSelectedCountries(allCodes);
    if (Platform.isLinux && _state.enabled) {
      await LinuxPlatformControls()
          .runVpnAction('set-routing-mode', ['iran_direct'])
          .catchError((_) => <String, dynamic>{});
    }
    if (mounted) {
      setState(() => _state = s);
      widget.onSettingsChanged?.call();
    }
  }

  Future<void> _deselectAll() async {
    final s = await CountryBypassBridge.instance.setSelectedCountries([]);
    if (Platform.isLinux && _state.enabled) {
      await LinuxPlatformControls()
          .runVpnAction('set-routing-mode', ['vpn_all'])
          .catchError((_) => <String, dynamic>{});
    }
    if (mounted) {
      setState(() => _state = s);
      widget.onSettingsChanged?.call();
    }
  }

  Future<void> _updateRules() async {
    setState(() => _updatingRules = true);
    final s = await CountryBypassBridge.instance.updateRules();
    if (mounted) {
      setState(() {
        _state = s;
        _updatingRules = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: LocalizedText(
            s.error ??
                'Country bypass DAT rules updated. Reconnect VPN to apply.',
          ),
        ),
      );
      widget.onSettingsChanged?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEnabled = _state.enabled;
    final isPersian = Localizations.localeOf(context).languageCode == 'fa';
    final selectedSet = _state.selectedCountries.toSet();

    final filteredCountries = _state.availableCountries.where((c) {
      if (_filter.isEmpty) return true;
      final q = _filter.toLowerCase();
      return c.name.toLowerCase().contains(q) ||
          c.code.toLowerCase().contains(q);
    }).toList();

    int totalSelectedCidrs = 0;
    for (final c in _state.availableCountries) {
      if (selectedSet.contains(c.code)) {
        totalSelectedCidrs += c.totalCidrs;
      }
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              secondary: Icon(
                Icons.public,
                color: isEnabled ? Colors.green : null,
                size: 28,
              ),
              title: LocalizedText(
                'Country Bypass: ${isEnabled ? "ON" : "OFF"}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: LocalizedText(
                isEnabled
                    ? (Platform.isWindows
                          ? 'Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.'
                          : 'Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.')
                    : 'Disabled: all traffic routes securely through encrypted VPN tunnel.',
              ),
              value: isEnabled,
              onChanged: _loading ? null : _toggleEnabled,
            ),
            if (isEnabled) ...[
              const Divider(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: localizedUiText(context, 'Search countries…'),
                        prefixIcon: const Icon(Icons.search, size: 20),
                        suffixIcon: _filter.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear, size: 18),
                                onPressed: () {
                                  _searchController.clear();
                                  setState(() => _filter = '');
                                },
                              )
                            : null,
                        border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                      ),
                      onChanged: (val) => setState(() => _filter = val.trim()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: _selectAll,
                    icon: const Icon(Icons.select_all, size: 16),
                    label: const LocalizedText('Select all'),
                  ),
                  OutlinedButton.icon(
                    onPressed: _deselectAll,
                    icon: const Icon(Icons.deselect, size: 16),
                    label: const LocalizedText('Deselect all'),
                  ),
                  if (!Platform.isWindows)
                    FilledButton.tonalIcon(
                      onPressed: _updatingRules ? null : _updateRules,
                      icon: _updatingRules
                          ? const SizedBox(
                              width: 14,
                              height: 14,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.refresh, size: 16),
                      label: LocalizedText(
                        _updatingRules ? 'Updating…' : 'Update Country Rules',
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: [
                  Chip(
                    avatar: const Icon(Icons.tune, size: 16),
                    label: LocalizedText(
                      '${selectedSet.length} countries selected ($totalSelectedCidrs CIDRs)',
                    ),
                  ),
                  Chip(
                    avatar: const Icon(Icons.schedule, size: 16),
                    label: LocalizedText(
                      'Updated: ${_state.rulesUpdatedAt ?? "Bundled cache"}',
                    ),
                  ),
                  if (_state.ruleSource != null)
                    Chip(
                      avatar: const Icon(Icons.data_object, size: 16),
                      label: LocalizedText(_state.ruleSource!),
                    ),
                  const Chip(
                    avatar: Icon(Icons.offline_bolt, size: 16),
                    label: LocalizedText('Offline cache ready'),
                  ),
                ],
              ),
              if (_state.error != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: LocalizedText(
                    _state.error!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
              const SizedBox(height: 12),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 280),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: filteredCountries.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final country = filteredCountries[index];
                    final isSelected = selectedSet.contains(country.code);
                    return CheckboxListTile(
                      dense: true,
                      value: isSelected,
                      onChanged: (_) => _toggleCountry(country.code),
                      title: Row(
                        children: [
                          LocalizedText(
                            country.flag,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: LocalizedText(
                              '${country.name} (${country.code})',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          LocalizedText(
                            '${country.totalCidrs} CIDRs',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
            if (Platform.isWindows) ...[
              const Divider(height: 32),
              LocalizedText(
                isPersian ? 'بایپس برنامه‌ها' : 'Per-app bypass',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              LocalizedText(
                isPersian
                    ? 'برنامه‌های انتخاب‌شده مستقیم از اینترنت عبور می‌کنند و بقیهٔ برنامه‌ها داخل VPN می‌مانند.'
                    : 'Selected apps use the physical network directly. Other apps continue using the VPN.',
              ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                secondary: Icon(
                  Icons.apps_rounded,
                  color: _perAppEnabled
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
                title: LocalizedText(
                  isPersian ? 'فعال‌سازی بایپس برنامه‌ها' : 'Enable app bypass',
                ),
                subtitle: LocalizedText(
                  _perAppExecutables.isEmpty
                      ? (isPersian
                            ? 'برای فعال‌سازی، ابتدا یک برنامه اضافه کنید.'
                            : 'Add at least one application to turn this on.')
                      : isPersian
                      ? '${_perAppExecutables.length} برنامه انتخاب شده'
                      : '${_perAppExecutables.length} application(s) selected',
                ),
                value: _perAppEnabled,
                onChanged: _loadingPerApp ? null : _setPerAppEnabled,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: FilledButton.tonalIcon(
                  onPressed: _loadingPerApp ? null : _addPerAppExecutable,
                  icon: const Icon(Icons.add),
                  label: LocalizedText(
                    isPersian
                        ? 'افزودن برنامه (.exe)'
                        : 'Add application (.exe)',
                  ),
                ),
              ),
              if (_perAppExecutables.isNotEmpty)
                ..._perAppExecutables.map(
                  (path) => ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.desktop_windows_rounded),
                    title: LocalizedText(
                      path.split(Platform.pathSeparator).last,
                    ),
                    subtitle: LocalizedText(
                      path,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: IconButton(
                      tooltip: localizedUiText(context, 'Remove'),
                      onPressed: _loadingPerApp
                          ? null
                          : () => _removePerAppExecutable(path),
                      icon: const Icon(Icons.delete_outline),
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
