import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_strings.dart';
import 'widgets/harmoney_nav_item.dart';

class HarmoneyNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onSelect;
  final VoidCallback? onMore;

  const HarmoneyNavBar({
    super.key,
    required this.currentIndex,
    required this.onSelect,
    this.onMore,
  });

  static const double _itemWidth = 52.0;
  static const double _itemHeight = 50.0;
  static const double _spacing = 6.0;
  static const int _itemCount = 5;
  static const double _trackWidth =
      (_itemWidth * _itemCount) + (_spacing * (_itemCount - 1));

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final strings = AppStrings(lang);

    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h.clamp(10.0, 24.0)),
        child: Center(
          heightFactor: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF133E54).withValues(alpha: 0.72),
                      const Color(0xFF092332).withValues(alpha: 0.88),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color(0xFF00D4AA).withValues(alpha: 0.28),
                    width: 1.2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00D4AA).withValues(alpha: 0.15),
                      blurRadius: 20,
                      spreadRadius: -1,
                      offset: const Offset(0, 4),
                    ),
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.50),
                      blurRadius: 28,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: SizedBox(
                  width: _trackWidth,
                  height: _itemHeight,
                  child: Stack(
                    children: [
                      // Sliding Active Neon Pill Capsule
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 320),
                        curve: Curves.easeOutBack,
                        left:
                            currentIndex.clamp(0, _itemCount - 1) *
                            (_itemWidth + _spacing),
                        top: 0,
                        width: _itemWidth,
                        height: _itemHeight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF00D4AA).withValues(alpha: 0.32),
                                const Color(0xFF00E5FF).withValues(alpha: 0.15),
                              ],
                            ),
                            border: Border.all(
                              color: const Color(0xFF00D4AA)
                                  .withValues(alpha: 0.8),
                              width: 1.2,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF00D4AA)
                                    .withValues(alpha: 0.35),
                                blurRadius: 14,
                                spreadRadius: 0.5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Interactive Nav Items Row
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            HarmoneyNavItem(
                              index: 0,
                              icon: 'chield',
                              label: strings.connect,
                              currentIndex: currentIndex,
                              onTap: onSelect,
                              width: _itemWidth,
                              height: _itemHeight,
                            ),
                            const SizedBox(width: _spacing),
                            HarmoneyNavItem(
                              index: 1,
                              icon: 'vpn_cloud',
                              label: strings.locations,
                              currentIndex: currentIndex,
                              onTap: onSelect,
                              width: _itemWidth,
                              height: _itemHeight,
                            ),
                            const SizedBox(width: _spacing),
                            HarmoneyNavItem(
                              index: 2,
                              icon: 'speed',
                              label: strings.statistics,
                              currentIndex: currentIndex,
                              onTap: onSelect,
                              width: _itemWidth,
                              height: _itemHeight,
                            ),
                            const SizedBox(width: _spacing),
                            HarmoneyNavItem(
                              index: 3,
                              icon: 'Shield',
                              label: strings.protection,
                              currentIndex: currentIndex,
                              onTap: onSelect,
                              width: _itemWidth,
                              height: _itemHeight,
                            ),
                            const SizedBox(width: _spacing),
                            HarmoneyNavItem(
                              index: 4,
                              icon: 'settings',
                              label: strings.settings,
                              currentIndex: currentIndex,
                              onTap: onSelect,
                              width: _itemWidth,
                              height: _itemHeight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
