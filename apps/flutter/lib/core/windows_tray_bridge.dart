import 'package:flutter/services.dart';

import 'vpn_core.dart';

/// Connects the Windows native notification-area menu to the Flutter VPN core.
class WindowsTrayBridge {
  WindowsTrayBridge._();

  static const _channel = MethodChannel('io.harmoney.client/windows_tray');
  static bool _installed = false;
  static Future<void> Function()? _toggle;
  static void Function()? _openApp;
  static void Function()? _openServers;
  static String? _lastState;

  static Future<void> configure({
    required Future<void> Function() onToggle,
    required void Function() onOpenApp,
    required void Function() onOpenServers,
  }) async {
    _toggle = onToggle;
    _openApp = onOpenApp;
    _openServers = onOpenServers;
    if (_installed) return;
    _installed = true;
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'toggleConnection':
          await _toggle?.call();
          break;
        case 'openServers':
          _openServers?.call();
          break;
        case 'openApp':
          _openApp?.call();
          break;
      }
    });
  }

  static Future<void> update(VpnConnectionState? state) async {
    if (state == null) return;
    final connected = state.isConnected;
    final server = state.server?.city.isNotEmpty == true
        ? state.server!.city
        : state.server?.country ?? 'Automatic';
    final value = '${connected ? 'connected' : state.status.name}|$server';
    if (value == _lastState) return;
    _lastState = value;
    try {
      await _channel.invokeMethod<void>('updateState', value);
    } on MissingPluginException {
      // The bridge is only implemented by the Windows runner.
    } on PlatformException {
      // The VPN remains usable if the tray is unavailable.
    }
  }
}
