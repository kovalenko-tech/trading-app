import 'package:flutter/material.dart';
import 'package:trading_app/common/theme/app_theme_color_scheme.dart';

class AppGradient {
  const AppGradient({
    required this.border,
    required this.button,
    required this.gray,
    required this.headerTitle,
    required this.progress,
  }) : super();

  factory AppGradient.byColorScheme(
    AppThemeColorScheme colorScheme,
  ) =>
      AppGradient(
        border: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme.sunGold400,
            colorScheme.sunGold500,
          ],
        ),
        button: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme.sunGold400.withOpacity(0.5),
            colorScheme.sunGold400.withOpacity(0),
          ],
        ),
        gray: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(1, 0.8),
          colors: [
            colorScheme.white.withOpacity(0.2),
            colorScheme.black.withOpacity(0.2),
          ],
        ),
        headerTitle: LinearGradient(
          colors: [
            colorScheme.sunGold400,
            colorScheme.red400,
          ],
        ),
        progress: LinearGradient(
          stops: const [
            0,
            0.93,
            0.97,
          ],
          colors: [
            colorScheme.sunGold400,
            colorScheme.sunGold400,
            colorScheme.white,
          ],
        ),
      );

  final Gradient border;
  final Gradient button;
  final Gradient gray;
  final Gradient headerTitle;
  final Gradient progress;

  Gradient card({required Color color}) => LinearGradient(
        begin: Alignment.topLeft,
        end: const Alignment(1, 0.8),
        colors: [
          color.withOpacity(0.2),
          color.withOpacity(0.05),
        ],
      );

  Gradient radial({required Color color}) => RadialGradient(
        radius: 1.1,
        center: Alignment.topLeft,
        colors: [
          color.withOpacity(0.2),
          color.withOpacity(0),
        ],
      );
}
