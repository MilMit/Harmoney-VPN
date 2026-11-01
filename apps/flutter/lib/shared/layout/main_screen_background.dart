import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/theme/app_colors.dart';
import '../../core/vpn_core.dart';

class MainScreenBackground extends StatelessWidget {
  final Widget child;
  final VpnConnectionStatus status;

  const MainScreenBackground({
    super.key,
    required this.child,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: status == VpnConnectionStatus.connected
          ? AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              toolbarHeight: 0,
            )
          : null,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: _getCurrentGradient(status)),
        child: child,
      ),
    );
  }

  LinearGradient _getCurrentGradient(VpnConnectionStatus status) {
    switch (status) {
      case VpnConnectionStatus.connected:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.topGradient,
            AppColors.middleGradientConnected,
            AppColors.bottomGradientConnected,
          ],
          stops: [0.0, 0.45, 1.0],
        );
      case VpnConnectionStatus.preparing:
      case VpnConnectionStatus.discovering:
      case VpnConnectionStatus.connecting:
      case VpnConnectionStatus.authenticating:
      case VpnConnectionStatus.verifying:
      case VpnConnectionStatus.reconnecting:
      case VpnConnectionStatus.recovering:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.topGradientConnecting,
            AppColors.middleGradientConnecting,
            AppColors.bottomGradientConnecting,
          ],
          stops: [0.1, 0.55, 1.0],
        );
      case VpnConnectionStatus.error:
      case VpnConnectionStatus.failed:
      case VpnConnectionStatus.authRequired:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.topGradient,
            AppColors.middleGradientFailedToConnect,
            AppColors.bottomGradientFailedToConnect,
          ],
          stops: [0.2, 0.7, 1.0],
        );
      case VpnConnectionStatus.idle:
      case VpnConnectionStatus.disconnected:
      case VpnConnectionStatus.disconnecting:
      case VpnConnectionStatus.cancelling:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.topGradientReadyToConnect,
            AppColors.middleGradient,
            AppColors.bottomGradient,
          ],
          stops: [0.2, 0.65, 1.0],
        );
    }
  }
}
