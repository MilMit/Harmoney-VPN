import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:path_drawing/path_drawing.dart';

import 'package:milmit_vpn_client/app/localized_text.dart';

import '../../../../core/theme/app_icons.dart';
import '../../../../core/vpn_core.dart';

/// Next-Generation Cyber-Glass Animated VPN Connection Button
/// Features dynamic multi-phase concentric pulse rings, dual-direction rotating
/// neon orbital halos, interactive spring physics, and real-time connected duration HUD.
class ConnectionButton extends StatefulWidget {
  final VpnConnectionStatus status;
  final VoidCallback onTap;
  final DateTime? connectedAt;

  const ConnectionButton({
    super.key,
    required this.status,
    required this.onTap,
    this.connectedAt,
  });

  @override
  State<ConnectionButton> createState() => _ConnectionButtonState();
}

class _ConnectionButtonState extends State<ConnectionButton>
    with TickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final AnimationController _rotationController;
  late final AnimationController _pressController;

  late final Animation<double> _pulseAnimation;
  late final Animation<double> _rotationAnimation;
  late final Animation<double> _pressScaleAnimation;

  Timer? _timer;
  int _seconds = 0;
  String _formattedTime = "00:00:00";
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _initAnimations();
    _handleTimerState(widget.status);
  }

  void _initAnimations() {
    // Smooth breathing pulse animation (runs continuously for a living aura)
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat(reverse: true);

    _pulseAnimation = CurvedAnimation(
      parent: _pulseController,
      curve: Curves.easeInOutCubic,
    );

    // Fast rotation for connecting / analyzing radar sweeps
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();

    _rotationAnimation = CurvedAnimation(
      parent: _rotationController,
      curve: Curves.linear,
    );

    // Press scale animation for spring-like tactile feedback
    _pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );

    _pressScaleAnimation = Tween<double>(begin: 1.0, end: 0.94).animate(
      CurvedAnimation(parent: _pressController, curve: Curves.easeOutCubic),
    );
  }

  @override
  void didUpdateWidget(covariant ConnectionButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.status != widget.status) {
      _handleTimerState(widget.status);
    }
  }

  void _handleTimerState(VpnConnectionStatus status) {
    if (status == VpnConnectionStatus.connected) {
      if (_timer == null || !_timer!.isActive) {
        if (widget.connectedAt != null) {
          _seconds = DateTime.now().difference(widget.connectedAt!).inSeconds;
        } else {
          _seconds = 0;
        }
        _updateFormattedTime();
        _timer = Timer.periodic(const Duration(seconds: 1), (_) {
          if (!mounted) return;
          setState(() {
            _seconds++;
            _updateFormattedTime();
          });
        });
      }
    } else {
      _timer?.cancel();
      _timer = null;
      _seconds = 0;
    }
  }

  void _updateFormattedTime() {
    final hours = (_seconds ~/ 3600).toString().padLeft(2, '0');
    final minutes = ((_seconds % 3600) ~/ 60).toString().padLeft(2, '0');
    final secs = (_seconds % 60).toString().padLeft(2, '0');
    _formattedTime = "$hours:$minutes:$secs";
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pulseController.dispose();
    _rotationController.dispose();
    _pressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double buttonSize = 136.w.clamp(120.0, 160.0);
    final double pulseMaxSize = 330.w.clamp(260.0, 350.0);

    final isConnected = widget.status == VpnConnectionStatus.connected;
    final isTransitioning =
        widget.status == VpnConnectionStatus.connecting ||
        widget.status == VpnConnectionStatus.authenticating ||
        widget.status == VpnConnectionStatus.preparing ||
        widget.status == VpnConnectionStatus.verifying ||
        widget.status == VpnConnectionStatus.reconnecting ||
        widget.status == VpnConnectionStatus.disconnecting;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: GestureDetector(
            onTapDown: (_) => _pressController.forward(),
            onTapUp: (_) {
              _pressController.reverse();
              widget.onTap();
            },
            onTapCancel: () => _pressController.reverse(),
            child: ScaleTransition(
              scale: _pressScaleAnimation,
              child: SizedBox(
                width: pulseMaxSize,
                height: pulseMaxSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Concentric Animated Glow Rings
                    AnimatedBuilder(
                      animation: Listenable.merge([
                        _pulseAnimation,
                        _rotationAnimation,
                      ]),
                      builder: (context, _) => CustomPaint(
                        size: Size.square(pulseMaxSize),
                        painter: _CyberOrbPulsePainter(
                          pulseProgress: _pulseAnimation.value,
                          rotationProgress: _rotationAnimation.value,
                          status: widget.status,
                          isHovered: _isHovered,
                        ),
                      ),
                    ),

                    // Rotating Cyber Orbitals (Dual Counter-Rotating Dashed Rings)
                    if (isTransitioning)
                      AnimatedBuilder(
                        animation: _rotationAnimation,
                        builder: (context, _) => CustomPaint(
                          size: Size.square(buttonSize * 1.55),
                          painter: _RotatingOrbitPainter(
                            progress: _rotationAnimation.value,
                          ),
                        ),
                      ),

                    // Core Shield Button
                    _buildMainButton(buttonSize, isConnected, isTransitioning),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Live Connected Duration HUD
        if (isConnected) ...[const SizedBox(height: 12), _buildDurationHud()],
      ],
    );
  }

  Widget _buildMainButton(
    double buttonSize,
    bool isConnected,
    bool isTransitioning,
  ) {
    return Container(
      width: buttonSize,
      height: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: isConnected
                ? const Color(0xFF00F5B8)
                      .withValues(alpha: _isHovered ? 0.45 : 0.30)
                : (isTransitioning
                      ? const Color(0xFFFFC46B).withValues(alpha: 0.35)
                      : const Color(0xFF00D4AA)
                            .withValues(alpha: _isHovered ? 0.28 : 0.15)),
            blurRadius: isConnected ? 28 : 20,
            spreadRadius: isConnected ? 2 : 0,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.55),
            blurRadius: 22,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Base Shield Silhouette Vector
          AppIcons.shieldAnime(width: buttonSize, height: buttonSize),

          // High-Tech Neon Rotating Arc during connecting
          if (isTransitioning)
            AnimatedBuilder(
              animation: _rotationAnimation,
              builder: (context, _) => CustomPaint(
                size: Size(buttonSize, buttonSize),
                painter: ShieldLoadingPainter(
                  progress: _rotationAnimation.value,
                  size: buttonSize,
                ),
              ),
            ),

          // Clipped Interactive Shield Core
          Positioned.fill(
            child: ClipPath(
              clipper: SvgShieldClipper(size: buttonSize),
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isConnected
                        ? [
                            const Color(0xFF00F5B8).withValues(alpha: 0.28),
                            const Color(0xFF093E48).withValues(alpha: 0.88),
                          ]
                        : (isTransitioning
                              ? [
                                  const Color(0xFFFFC46B)
                                      .withValues(alpha: 0.25),
                                  const Color(0xFF33230A)
                                      .withValues(alpha: 0.85),
                                ]
                              : [
                                  const Color(0xFF133D50)
                                      .withValues(alpha: 0.80),
                                  const Color(0xFF071E2B)
                                      .withValues(alpha: 0.95),
                                ]),
                  ),
                ),
                alignment: Alignment.center,
                child: _buildButtonContent(buttonSize, isTransitioning),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonContent(double buttonSize, bool isTransitioning) {
    final double iconSize = (buttonSize * 0.44).clamp(42.0, 68.0);
    final double animSize = (buttonSize * 0.85).clamp(80.0, 130.0);

    return Stack(
      alignment: Alignment.center,
      children: [
        _buildStatusIcon(iconSize),
        if (isTransitioning)
          Lottie.asset(
            'assets/lottie/scan.json',
            width: animSize,
            height: animSize,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
      ],
    );
  }

  Widget _buildStatusIcon(double iconSize) {
    switch (widget.status) {
      case VpnConnectionStatus.connected:
        return AppIcons.harmoneyCheck(width: iconSize, height: iconSize);
      case VpnConnectionStatus.error:
      case VpnConnectionStatus.failed:
      case VpnConnectionStatus.authRequired:
        return AppIcons.harmoneyReload(width: iconSize, height: iconSize);
      case VpnConnectionStatus.connecting:
      case VpnConnectionStatus.authenticating:
      case VpnConnectionStatus.preparing:
      case VpnConnectionStatus.verifying:
      case VpnConnectionStatus.reconnecting:
      case VpnConnectionStatus.disconnecting:
        return AppIcons.harmoneyLoading(width: iconSize, height: iconSize);
      case VpnConnectionStatus.idle:
      case VpnConnectionStatus.disconnected:
      case VpnConnectionStatus.cancelling:
      default:
        return AppIcons.harmoneyStandby(width: iconSize, height: iconSize);
    }
  }

  Widget _buildDurationHud() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF0C2938).withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFF00F5B8).withValues(alpha: 0.45),
          width: 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF00F5B8).withValues(alpha: 0.18),
            blurRadius: 14,
            spreadRadius: -2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Pulsing emerald indicator
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF00F5B8),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF00F5B8).withValues(alpha: 0.8),
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          LocalizedText(
            _formattedTime,
            style: const TextStyle(
              color: Color(0xFF00F5B8),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              letterSpacing: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}

/// Dynamic Concentric Ripple & Breathing Painter
class _CyberOrbPulsePainter extends CustomPainter {
  final double pulseProgress;
  final double rotationProgress;
  final VpnConnectionStatus status;
  final bool isHovered;

  const _CyberOrbPulsePainter({
    required this.pulseProgress,
    required this.rotationProgress,
    required this.status,
    required this.isHovered,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final baseRadius = size.shortestSide / 3.0;

    final isConnected = status == VpnConnectionStatus.connected;
    final isTransitioning =
        status == VpnConnectionStatus.connecting ||
        status == VpnConnectionStatus.authenticating ||
        status == VpnConnectionStatus.preparing ||
        status == VpnConnectionStatus.verifying ||
        status == VpnConnectionStatus.reconnecting;

    final Color ringColor = isConnected
        ? const Color(0xFF00F5B8)
        : (isTransitioning ? const Color(0xFFFFC46B) : const Color(0xFF00D4AA));

    const scales = [1.25, 1.05, 0.88, 0.72];
    final hoverBonus = isHovered ? 0.08 : 0.0;

    for (var i = 0; i < scales.length; i++) {
      final double progressOffset = (pulseProgress + (i * 0.22)) % 1.0;
      final double scale = scales[i] + (progressOffset * 0.16) + hoverBonus;

      final double alpha = isConnected
          ? ((1.0 - progressOffset) * 0.28).clamp(0.04, 0.32)
          : (isTransitioning
                ? ((1.0 - progressOffset) * 0.35).clamp(0.06, 0.40)
                : ((1.0 - progressOffset) * 0.18).clamp(0.02, 0.22));

      final paint = Paint()
        ..color = ringColor.withValues(alpha: alpha)
        ..style = PaintingStyle.stroke
        ..strokeWidth = (i == 0 ? 2.2 : 1.4)
        ..isAntiAlias = true;

      canvas.drawCircle(center, baseRadius * scale, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _CyberOrbPulsePainter oldDelegate) =>
      oldDelegate.pulseProgress != pulseProgress ||
      oldDelegate.status != status ||
      oldDelegate.isHovered != isHovered;
}

/// Rotating Dashed Orbital Rings for High-Tech Connecting State
class _RotatingOrbitPainter extends CustomPainter {
  final double progress;

  const _RotatingOrbitPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.shortestSide / 2.0;

    // Outer Clockwise Arc
    final outerPaint = Paint()
      ..color = const Color(0xFF00F5B8).withValues(alpha: 0.65)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    final outerStartAngle = progress * 2 * math.pi;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      outerStartAngle,
      math.pi * 0.65,
      false,
      outerPaint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      outerStartAngle + math.pi,
      math.pi * 0.65,
      false,
      outerPaint,
    );

    // Inner Counter-Clockwise Arc
    final innerPaint = Paint()
      ..color = const Color(0xFFFFC46B).withValues(alpha: 0.55)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;

    final innerStartAngle = -progress * 2 * math.pi * 1.3;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius * 0.88),
      innerStartAngle,
      math.pi * 0.5,
      false,
      innerPaint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius * 0.88),
      innerStartAngle + math.pi,
      math.pi * 0.5,
      false,
      innerPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _RotatingOrbitPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

/// Svg Shield Path Clipper
class SvgShieldClipper extends CustomClipper<Path> {
  final double size;

  const SvgShieldClipper({required this.size});

  @override
  Path getClip(Size clipSize) {
    const String svgPathData =
        "M51.39 1.16517L100.313 21.8855C100.72 22.0581 100.966 22.4781 100.917 22.918L94.1288 83.2901C93.9546 84.8395 93.1841 86.2602 91.9806 87.2513L51.6357 120.476C51.2665 120.781 50.7336 120.781 50.3643 120.476L10.0194 87.2513C8.8159 86.2602 8.04544 84.8395 7.87124 83.2901L1.08337 22.918C1.03392 22.4781 1.27953 22.0581 1.68712 21.8855L50.61 1.16517C50.8593 1.0596 51.1407 1.0596 51.39 1.16517Z";

    final path = parseSvgPathData(svgPathData);
    final bounds = path.getBounds();

    final scaleX = clipSize.width / bounds.width;
    final scaleY = clipSize.height / bounds.height;
    final scale = math.min(scaleX, scaleY);

    final scaledWidth = bounds.width * scale;
    final scaledHeight = bounds.height * scale;
    final offsetX = (clipSize.width - scaledWidth) / 2;
    final offsetY = (clipSize.height - scaledHeight) / 2;

    final matrix4 = Matrix4.identity()
      ..translate(
        offsetX - (bounds.left * scale),
        offsetY - (bounds.top * scale),
      )
      ..scale(scale, scale);

    return path.transform(matrix4.storage);
  }

  @override
  bool shouldReclip(covariant SvgShieldClipper oldClipper) =>
      oldClipper.size != size;
}

/// Glowing Shield Loading Arc
class ShieldLoadingPainter extends CustomPainter {
  final double progress;
  final double size;

  ShieldLoadingPainter({required this.progress, required this.size});

  @override
  void paint(Canvas canvas, Size canvasSize) {
    const String svgPathData =
        "M51.39 1.16517L100.313 21.8855C100.72 22.0581 100.966 22.4781 100.917 22.918L94.1288 83.2901C93.9546 84.8395 93.1841 86.2602 91.9806 87.2513L51.6357 120.476C51.2665 120.781 50.7336 120.781 50.3643 120.476L10.0194 87.2513C8.8159 86.2602 8.04544 84.8395 7.87124 83.2901L1.08337 22.918C1.03392 22.4781 1.27953 22.0581 1.68712 21.8855L50.61 1.16517C50.8593 1.0596 51.1407 1.0596 51.39 1.16517Z";

    final path = parseSvgPathData(svgPathData);
    final bounds = path.getBounds();

    final scaleX = canvasSize.width / bounds.width;
    final scaleY = canvasSize.height / bounds.height;
    final scale = math.min(scaleX, scaleY);

    final scaledWidth = bounds.width * scale;
    final scaledHeight = bounds.height * scale;
    final offsetX = (canvasSize.width - scaledWidth) / 2;
    final offsetY = (canvasSize.height - scaledHeight) / 2;

    final matrix4 = Matrix4.identity()
      ..translate(
        offsetX - (bounds.left * scale),
        offsetY - (bounds.top * scale),
      )
      ..scale(scale, scale);

    final transformedPath = path.transform(matrix4.storage);
    final metrics = transformedPath.computeMetrics().toList();
    if (metrics.isEmpty) return;

    final metric = metrics.first;
    final totalLength = metric.length;
    final pathSegment = metric.extractPath(
      (progress * totalLength) % totalLength,
      ((progress + 0.35) * totalLength) % totalLength,
    );

    final paint = Paint()
      ..shader = const SweepGradient(
        colors: [
          Color(0x0000D4AA),
          Color(0xFF00F5B8),
          Color(0xFF00E5FF),
          Color(0xFFFFC46B),
        ],
      ).createShader(Rect.fromLTWH(0, 0, canvasSize.width, canvasSize.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.2
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(pathSegment, paint);
  }

  @override
  bool shouldRepaint(covariant ShieldLoadingPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
