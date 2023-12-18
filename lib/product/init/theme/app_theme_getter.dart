import 'package:flutter/material.dart';

class AppThemeGetter {
  final BuildContext context;

  AppThemeGetter(this.context);

  TextTheme get textTheme => Theme.of(context).textTheme;
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  ThemeData get themeData => Theme.of(context);
}
