import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/linux_platform_controls.dart';
import '../../core/platform_capability_matrix.dart';
import '../../core/secure_credentials_vault.dart';

import 'package:milmit_vpn_client/app/localized_text.dart';

class HotspotPage extends StatefulWidget {
  const HotspotPage({super.key});

  @override
  State<HotspotPage> createState() => _HotspotPageState();
}

class _HotspotPageState extends State<HotspotPage> {
  final _controls = LinuxPlatformControls();
  Map<String, dynamic>? _routerData;
  Map<String, dynamic>? _guestData;
  bool _loading = true;
  String? _busyAction;
  String? _error;
  Timer? _timer;

  bool _windowsHotspotSharing = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isLinux) {
      _refresh();
      _timer = Timer.periodic(
        const Duration(seconds: 4),
        (_) => _refresh(silent: true),
      );
    } else if (Platform.isWindows) {
      _loadWindowsState();
      _loading = false;
    } else {
      _loading = false;
    }
  }

  Future<void> _loadWindowsState() async {
    final enabled = await SecureCredentialsVault.instance
        .isHotspotSharingEnabled();
    if (mounted) setState(() => _windowsHotspotSharing = enabled);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _refresh({bool silent = false}) async {
    if (!Platform.isLinux) return;
    if (!silent) setState(() => _loading = true);
    try {
      final res = await _controls.routerStatus();
      Map<String, dynamic>? gRes;
      try {
        gRes = await _controls.guestStatus();
      } catch (_) {}
      if (mounted) {
        setState(() {
          _routerData = res;
          _guestData = gRes;
          _error = null;
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted && !silent) {
        setState(() {
          _error = e.toString();
          _loading = false;
        });
      }
    }
  }

  static String _translateError(String raw) {
    if (raw.contains('no spare Wi-Fi interface') ||
        raw.contains('device not found')) {
      return 'No available Wi-Fi adapter found. Ensure your Wi-Fi device is not already in use by another connection.';
    }
    if (raw.contains('duration must be 5..1440')) {
      return 'Invalid duration. Guest Hotspot duration must be between 5 and 1440 minutes (24 hours).';
    }
    if (raw.contains('insufficient privileges') ||
        raw.contains('polkit') ||
        raw.contains('not authorized')) {
      return 'Administrator permission required. Operation was canceled or not authorized.';
    }
    if (raw.contains('Connection \'MilMit Guest Hotspot\' is not active')) {
      return 'Guest hotspot is currently inactive.';
    }
    return raw.replaceAll('StateError: ', '').replaceAll('Exception: ', '');
  }

  Future<void> _runAction(
    String name,
    Future<dynamic> Function() action,
  ) async {
    if (_busyAction != null) return;
    setState(() {
      _busyAction = name;
      _error = null;
    });
    try {
      await action();
      await _refresh();
    } catch (e) {
      if (mounted) setState(() => _error = _translateError(e.toString()));
    } finally {
      if (mounted) setState(() => _busyAction = null);
    }
  }

  Future<void> _editDevice(String mac, Map<String, dynamic> devConfig) async {
    final speedController = TextEditingController(
      text: '${devConfig['speed_kbit'] ?? 0}',
    );
    final quotaController = TextEditingController(
      text: '${devConfig['quota_mb'] ?? 0}',
    );
    var policy = '${devConfig['policy'] ?? 'default'}';
    var quotaAction = '${devConfig['quota_action'] ?? 'notify'}';
    var paused = devConfig['paused'] == true;

    final updated = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDlg) => AlertDialog(
          title: LocalizedText('Configure Device: $mac'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LocalizedText('Routing Policy:'),
                const SizedBox(height: 6),
                DropdownButtonFormField<String>(
                  initialValue: policy,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'default',
                      child: LocalizedText('Default Hotspot Route'),
                    ),
                    DropdownMenuItem(
                      value: 'vpn',
                      child: LocalizedText('Force VPN Encrypted'),
                    ),
                    DropdownMenuItem(
                      value: 'direct',
                      child: LocalizedText('Direct (Bypass VPN)'),
                    ),
                    DropdownMenuItem(
                      value: 'block',
                      child: LocalizedText('Block Internet Access'),
                    ),
                  ],
                  onChanged: (val) => setDlg(() => policy = val!),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: speedController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: localizedUiText(
                      context,
                      'Speed limit (kbit/s, 0 = unlimited)',
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: quotaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: localizedUiText(
                      context,
                      'Data Quota (MB, 0 = unlimited)',
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                const LocalizedText('Quota Exceeded Action:'),
                const SizedBox(height: 6),
                DropdownButtonFormField<String>(
                  initialValue: quotaAction,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'notify',
                      child: LocalizedText('Notify only'),
                    ),
                    DropdownMenuItem(
                      value: 'throttle',
                      child: LocalizedText('Throttle to 128kbit/s'),
                    ),
                    DropdownMenuItem(
                      value: 'block',
                      child: LocalizedText('Block internet'),
                    ),
                  ],
                  onChanged: (val) => setDlg(() => quotaAction = val!),
                ),
                const SizedBox(height: 12),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const LocalizedText('Pause Device Connection'),
                  value: paused,
                  onChanged: (val) => setDlg(() => paused = val),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const LocalizedText('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const LocalizedText('Save'),
            ),
          ],
        ),
      ),
    );

    if (updated == true) {
      final speed = int.tryParse(speedController.text.trim()) ?? 0;
      final quota = int.tryParse(quotaController.text.trim()) ?? 0;
      await _runAction(
        'device-set',
        () => _controls.deviceSet(
          mac: mac,
          policy: policy,
          speedKbit: speed,
          quotaMb: quota,
          quotaAction: quotaAction,
          paused: paused,
        ),
      );
    }
  }

  Future<void> _startGuestDialog() async {
    final ssidController = TextEditingController(text: 'MilMit Guest');
    final durationController = TextEditingController(text: '60');

    final started = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const LocalizedText('Start Guest Hotspot'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: ssidController,
              decoration: InputDecoration(
                labelText: localizedUiText(context, 'Guest SSID'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: durationController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: localizedUiText(
                  context,
                  'Duration (Minutes, 5-1440)',
                ),
                border: OutlineInputBorder(),
              ),
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
            child: const LocalizedText('Start Guest Wi-Fi'),
          ),
        ],
      ),
    );

    if (started == true) {
      final minutes = int.tryParse(durationController.text.trim()) ?? 60;
      final ssid = ssidController.text.trim().isEmpty
          ? 'MilMit Guest'
          : ssidController.text.trim();
      await _runAction(
        'guest-start',
        () => _controls.guestStart(minutes: minutes, ssid: ssid),
      );
    }
  }

  String _formatBytes(num bytes) {
    if (bytes <= 0) return '0 B';
    const units = ['B', 'KB', 'MB', 'GB', 'TB'];
    var b = bytes.toDouble();
    var i = 0;
    while (b >= 1024 && i < units.length - 1) {
      b /= 1024;
      i++;
    }
    return '${b.toStringAsFixed(i > 0 ? 1 : 0)} ${units[i]}';
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return _buildWindowsHotspotView(context);
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
                const Icon(
                  Icons.wifi_tethering_off,
                  size: 64,
                  color: Colors.grey,
                ),
                const SizedBox(height: 16),
                LocalizedText(
                  'Not supported on $platName',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                LocalizedText(
                  PlatformCapabilityMatrix.getCapability(
                    PlatformFeatureKey.hotspotTethering,
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

    final hotspot = _routerData?['hotspot'] as Map? ?? const {};
    final config = _routerData?['config'] as Map? ?? const {};
    // Merge guest from routerData and direct guestStatus
    final guest = Map<String, dynamic>.from(
      _routerData?['guest'] as Map? ?? const {},
    )..addAll(_guestData ?? const {});
    final usage = _routerData?['usage'] as Map? ?? const {};

    final hotspotActive = hotspot['ok'] == true;
    final clients = (hotspot['clients'] as List? ?? const [])
        .map((c) => Map<String, dynamic>.from(c as Map))
        .toList();
    final devicesCfg = (config['devices'] as Map? ?? const {});
    final devicesUsage = (usage['devices'] as Map? ?? const {});

    final guestActive = guest['active'] == true;
    final guestRemaining = (guest['remaining_seconds'] as num?) ?? 0;
    final guestSsid = guest['ssid'] ?? 'MilMit Guest';
    final guestIface = guest['iface'] ?? 'wlan';
    final guestSubnet = guest['subnet'] ?? hotspot['subnet'] ?? '10.42.0.0/24';

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () => _refresh(),
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocalizedText(
                        'Hotspot & Devices',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 4),
                      const LocalizedText(
                        'Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.',
                      ),
                    ],
                  ),
                ),
                FilledButton.tonalIcon(
                  onPressed: _busyAction == null ? () => _refresh() : null,
                  icon: const Icon(Icons.refresh),
                  label: const LocalizedText('Refresh'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (_loading && _routerData == null)
              const LinearProgressIndicator(),
            if (_error != null) ...[
              Card(
                color: Theme.of(context).colorScheme.errorContainer,
                child: ListTile(
                  leading: const Icon(Icons.error_outline),
                  title: const LocalizedText('Error'),
                  subtitle: LocalizedText(_error!),
                ),
              ),
              const SizedBox(height: 12),
            ],

            // Hotspot Status Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          hotspotActive
                              ? Icons.wifi_tethering
                              : Icons.wifi_tethering_off,
                          color: hotspotActive ? Colors.green : Colors.grey,
                          size: 28,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LocalizedText(
                                hotspotActive
                                    ? 'Hotspot Active'
                                    : 'Hotspot Inactive',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              LocalizedText(
                                hotspotActive
                                    ? 'Interface: ${hotspot['iface']} · Subnet: ${hotspot['subnet']} · Clients: ${hotspot['client_count'] ?? 0}'
                                    : 'No active hotspot interface detected on system.',
                              ),
                            ],
                          ),
                        ),
                        FilledButton.tonal(
                          onPressed: _busyAction == null
                              ? () => _runAction(
                                  'quota-enforce',
                                  () => _controls.quotaEnforce(),
                                )
                              : null,
                          child: const LocalizedText('Enforce Quota'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Guest Hotspot Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person_outline, size: 28),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const LocalizedText(
                                    'Guest Hotspot',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Chip(
                                    visualDensity: VisualDensity.compact,
                                    label: LocalizedText(
                                      guestActive ? 'Active' : 'Inactive',
                                      style: TextStyle(
                                        color: guestActive
                                            ? Colors.green
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              LocalizedText(
                                guestActive
                                    ? 'SSID: $guestSsid · Interface: $guestIface · Subnet: $guestSubnet\nRemaining: ${guestRemaining ~/ 60}m (${guestRemaining % 60}s) · Password: ${guest['password'] ?? '********'}'
                                    : 'Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.',
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                          spacing: 8,
                          children: [
                            IconButton(
                              tooltip: localizedUiText(
                                context,
                                'Refresh Guest Status',
                              ),
                              icon: const Icon(Icons.refresh),
                              onPressed: _busyAction == null
                                  ? () => _refresh()
                                  : null,
                            ),
                            if (guestActive)
                              FilledButton.tonal(
                                style: FilledButton.styleFrom(
                                  backgroundColor: Colors.red.withOpacity(0.1),
                                ),
                                onPressed: _busyAction == null
                                    ? () => _runAction(
                                        'guest-stop',
                                        () => _controls.guestStop(),
                                      )
                                    : null,
                                child: const LocalizedText(
                                  'Stop Guest',
                                  style: TextStyle(color: Colors.red),
                                ),
                              )
                            else
                              FilledButton.tonal(
                                onPressed: _busyAction == null
                                    ? _startGuestDialog
                                    : null,
                                child: const LocalizedText('Start Guest'),
                              ),
                          ],
                        ),
                      ],
                    ),
                    if (guestActive && (guest['wifi_uri'] != null)) ...[
                      const SizedBox(height: 12),
                      SelectableText(
                        localizedUiText(
                          context,
                          'Wi-Fi QR URI: ${guest['wifi_uri']}',
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Connected Devices
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LocalizedText(
                  'Connected Devices (${clients.length})',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (clients.isEmpty)
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: LocalizedText(
                      'No devices currently connected to hotspot.',
                    ),
                  ),
                ),
              )
            else
              for (final client in clients) ...[
                Builder(
                  builder: (context) {
                    final mac = client['mac']?.toString().toUpperCase() ?? '';
                    final ip = client['ip']?.toString() ?? '';
                    final devConf = (devicesCfg[mac] as Map?) ?? const {};
                    final devUsage = (devicesUsage[mac] as Map?) ?? const {};
                    final policy = devConf['policy'] ?? 'default';
                    final paused = devConf['paused'] == true;
                    final dayBytes =
                        (devUsage['day_up_bytes'] ?? 0) +
                        (devUsage['day_down_bytes'] ?? 0);

                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: paused
                              ? Colors.orange.withOpacity(0.2)
                              : policy == 'block'
                              ? Colors.red.withOpacity(0.2)
                              : Colors.blue.withOpacity(0.2),
                          child: Icon(
                            paused
                                ? Icons.pause
                                : policy == 'block'
                                ? Icons.block
                                : Icons.devices,
                            color: paused
                                ? Colors.orange
                                : policy == 'block'
                                ? Colors.red
                                : Colors.blue,
                          ),
                        ),
                        title: LocalizedText('$mac ($ip)'),
                        subtitle: LocalizedText(
                          'Policy: $policy · Today: ${_formatBytes(dayBytes)}'
                          '${devConf['speed_kbit'] != null && devConf['speed_kbit'] > 0 ? ' · Speed: ${devConf['speed_kbit']}k' : ''}'
                          '${devConf['quota_mb'] != null && devConf['quota_mb'] > 0 ? ' · Quota: ${devConf['quota_mb']}MB (${devConf['quota_action']})' : ''}'
                          '${paused ? ' [PAUSED]' : ''}',
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              tooltip: localizedUiText(
                                context,
                                'Configure device',
                              ),
                              icon: const Icon(Icons.settings_outlined),
                              onPressed: () => _editDevice(
                                mac,
                                Map<String, dynamic>.from(devConf),
                              ),
                            ),
                            IconButton(
                              tooltip: paused
                                  ? localizedUiText(context, 'Resume')
                                  : localizedUiText(context, 'Pause'),
                              icon: Icon(
                                paused ? Icons.play_arrow : Icons.pause,
                              ),
                              onPressed: () => _runAction(
                                'pause-toggle',
                                () => _controls.deviceSet(
                                  mac: mac,
                                  policy: policy,
                                  speedKbit: devConf['speed_kbit'] ?? 0,
                                  quotaMb: devConf['quota_mb'] ?? 0,
                                  quotaAction:
                                      devConf['quota_action'] ?? 'notify',
                                  paused: !paused,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
              ],
            const SizedBox(height: 16),

            // Hotspot Protection Options
            LocalizedText(
              'Protected Hotspot Options',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Card(
              child: Column(
                children: [
                  SwitchListTile(
                    title: const LocalizedText('Force Hotspot VPN DNS'),
                    subtitle: const LocalizedText(
                      'Redirect device DNS queries through the selected VPN.',
                    ),
                    value: config['force_dns'] != false,
                    onChanged: (val) => _runAction(
                      'options',
                      () => _controls.routerOptions(forceDns: val),
                    ),
                  ),
                  SwitchListTile(
                    title: const LocalizedText('Block QUIC (UDP 443)'),
                    subtitle: const LocalizedText(
                      'Force HTTPS traffic through TCP/TLS for consistent filtering.',
                    ),
                    value: config['block_quic'] == true,
                    onChanged: (val) => _runAction(
                      'options',
                      () => _controls.routerOptions(blockQuic: val),
                    ),
                  ),
                  SwitchListTile(
                    title: const LocalizedText('Client Isolation'),
                    subtitle: const LocalizedText(
                      'Prevent connected hotspot clients from communicating directly.',
                    ),
                    value: config['client_isolation'] == true,
                    onChanged: (val) => _runAction(
                      'options',
                      () => _controls.routerOptions(clientIsolation: val),
                    ),
                  ),
                  ListTile(
                    title: const LocalizedText('Hotspot IPv6 Policy'),
                    subtitle: LocalizedText(
                      'Current: ${config['ipv6_policy'] ?? 'block'}',
                    ),
                    trailing: DropdownButton<String>(
                      value: config['ipv6_policy'] == 'allow'
                          ? 'allow'
                          : 'block',
                      items: const [
                        DropdownMenuItem(
                          value: 'block',
                          child: LocalizedText('Block IPv6 (Leak Protection)'),
                        ),
                        DropdownMenuItem(
                          value: 'allow',
                          child: LocalizedText('Allow IPv6'),
                        ),
                      ],
                      onChanged: (val) => _runAction(
                        'options',
                        () => _controls.routerOptions(ipv6Policy: val),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Hotspot Doctor & Repair
            LocalizedText(
              'Hotspot Doctor & Diagnostics',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    FilledButton.tonalIcon(
                      onPressed: _busyAction == null
                          ? () => _runAction(
                              'hotspot-doctor',
                              () => _controls.hotspotDoctor(),
                            )
                          : null,
                      icon: const Icon(Icons.medical_services_outlined),
                      label: const LocalizedText('Run Hotspot Doctor'),
                    ),
                    FilledButton.tonalIcon(
                      onPressed: _busyAction == null
                          ? () => _runAction(
                              'hotspot-repair',
                              () => _controls.hotspotRepair(),
                            )
                          : null,
                      icon: const Icon(Icons.build_outlined),
                      label: const LocalizedText('Repair Hotspot Routing'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWindowsHotspotView(BuildContext context) {
    final isPersian = Localizations.localeOf(context).languageCode == 'fa';

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 680),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00D4AA).withValues(alpha: 0.15),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF00D4AA).withValues(alpha: 0.4),
                          width: 1.5,
                        ),
                      ),
                      child: const Icon(
                        Icons.wifi_tethering_rounded,
                        color: Color(0xFF61F2C2),
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocalizedText(
                            isPersian
                                ? 'اشتراک‌گذاری VPN با هات‌اسپات (ویندوز)'
                                : 'VPN Hotspot Sharing (Windows ICS)',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 4),
                          LocalizedText(
                            isPersian
                                ? 'توزیع اینترنت امن و ضدفیلتر به گوشی‌ها و سایر دستگاه‌ها'
                                : 'Share secure encrypted tunnel with phones & tablets',
                            style: const TextStyle(
                              color: Colors.white60,
                              fontSize: 12.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Main Toggle Card
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF133E54).withValues(alpha: 0.85),
                        const Color(0xFF092332).withValues(alpha: 0.92),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: _windowsHotspotSharing
                          ? const Color(0xFF00D4AA).withValues(alpha: 0.6)
                          : Colors.white.withValues(alpha: 0.1),
                      width: 1.2,
                    ),
                    boxShadow: [
                      if (_windowsHotspotSharing)
                        BoxShadow(
                          color: const Color(0xFF00D4AA)
                              .withValues(alpha: 0.18),
                          blurRadius: 18,
                          offset: const Offset(0, 4),
                        ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.35),
                        blurRadius: 18,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SwitchListTile(
                        value: _windowsHotspotSharing,
                        activeColor: const Color(0xFF61F2C2),
                        activeTrackColor: const Color(0xFF00D4AA)
                            .withValues(alpha: 0.4),
                        onChanged: (val) async {
                          try {
                            await SecureCredentialsVault.instance
                                .setHotspotSharingEnabled(val);
                            if (mounted) {
                              setState(() => _windowsHotspotSharing = val);
                            }
                          } catch (error) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: LocalizedText(error.toString()),
                                ),
                              );
                            }
                          }
                        },
                        title: LocalizedText(
                          isPersian
                              ? 'اتصال خودکار به هات‌اسپات (Windows ICS)'
                              : 'Enable Hotspot Sharing (ICS)',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: LocalizedText(
                            isPersian
                                ? 'به اشتراک‌گذاری تونل فعال VPN با وای‌فای هات‌اسپات ویندوز برای تمامی دستگاه‌ها'
                                : 'Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.',
                            style: const TextStyle(
                              color: Colors.white60,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // Hardware Compatibility & MTU Badge (Dell Latitude 7210)
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFF00E5FF).withValues(alpha: 0.25),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.laptop_chromebook_rounded,
                            color: Color(0xFF00E5FF),
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          LocalizedText(
                            isPersian
                                ? 'پشتیبانی سخت‌افزاری: Dell Latitude 7210 و چیپ‌های Intel / LTE'
                                : 'Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE',
                            style: const TextStyle(
                              color: Color(0xFF00E5FF),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      LocalizedText(
                        isPersian
                            ? '• بهینه‌سازی خودکار MTU روی ۱۳۵۰ جهت رفع فریز و باز شدن بدون نقص یوتیوب و اینستاگرام در گوشی‌های متصل.\n• اولویت‌بندی هوشمند بین وای‌فای (Intel AX201/AX210) و سیم‌کارت داخلی LTE (Dell 5821e/Fibocom).\n• عدم نیاز به نصب نرم‌افزار اضافی روی گوشی‌ها یا تبلت‌های متصل.'
                            : '• Automatic MTU optimization to 1350 preventing packet fragmentation.\n• Intelligent dual-uplink support (Intel Wi-Fi + Cellular LTE).\n• Zero client-side software configuration needed on connected devices.',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11.5,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Process.run('cmd.exe', [
                            '/c',
                            'start',
                            'ms-settings:network-mobilehotspot',
                          ]);
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.white.withValues(alpha: 0.2),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        icon: const Icon(Icons.settings_cell_rounded, size: 18),
                        label: LocalizedText(
                          isPersian
                              ? 'تنظیمات هات‌اسپات ویندوز'
                              : 'Open Mobile Hotspot',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: () async {
                          try {
                            await SecureCredentialsVault.instance
                                .setHotspotSharingEnabled(true);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: LocalizedText(
                                    isPersian
                                        ? 'اتصال ICS و تنظیمات MTU با موفقیت بازنشانی شد.'
                                        : 'Hotspot sharing preference saved.',
                                  ),
                                ),
                              );
                            }
                          } catch (error) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: LocalizedText(error.toString()),
                                ),
                              );
                            }
                          }
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFF00D4AA),
                          foregroundColor: const Color(0xFF07212E),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        icon: const Icon(Icons.refresh_rounded, size: 18),
                        label: LocalizedText(
                          isPersian ? 'ذخیره تنظیم' : 'Save preference',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
