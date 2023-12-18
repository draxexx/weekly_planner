import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';

class CustomLinearGradient {
  final BuildContext context;

  CustomLinearGradient({required this.context});

  LinearGradient linearGradient({
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<Color>? colors,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors ??
          [
            AppThemeGetter(context).colorScheme.secondary,
            AppThemeGetter(context).colorScheme.primary,
          ],
    );
  }
}
