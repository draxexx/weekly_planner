import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';

ThemeData themeLayout({
  required ThemeData themeData,
  required ColorScheme colorScheme,
  required Color primaryColor,
  required Color secondaryHeaderColor,
  required Color unselectedWidgetColor,
  required TextTheme textTheme,
  required CardTheme cardTheme,
}) {
  return ThemeData(
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    secondaryHeaderColor: secondaryHeaderColor,
    unselectedWidgetColor: unselectedWidgetColor,
    textTheme: textTheme,
    cardTheme: cardTheme,
  );
}

ColorScheme colorScheme({
  required ThemeData themeData,
  required Color primary,
  required Color secondary,
  required Color tertiary,
  required Color background,
  required Color surface,
  required Color primaryContainer,
}) {
  return themeData.colorScheme.copyWith(
    primary: primary,
    secondary: secondary,
    tertiary: tertiary,
    background: background,
    surface: surface,
    primaryContainer: primaryContainer,
  );
}

CardTheme cardTheme({
  required Color color,
}) {
  return CardTheme(
    color: color,
  );
}

TextTheme textTheme(BuildContext context, {required Color color}) {
  return TextTheme(
    labelSmall: DraxexTextStyle(context).style(
      fontSize: 6,
      color: color,
    ),
    labelMedium: DraxexTextStyle(context).style(
      fontSize: 8,
      color: color,
    ),
    labelLarge: DraxexTextStyle(context).style(
      fontSize: 10,
      color: color,
    ),
    bodySmall: DraxexTextStyle(context).style(
      fontSize: 12,
      color: color,
    ),
    bodyMedium: DraxexTextStyle(context).style(
      fontSize: 14,
      color: color,
    ),
    bodyLarge: DraxexTextStyle(context).style(
      fontSize: 16,
      color: color,
    ),
    titleSmall: DraxexTextStyle(context).style(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: color,
    ),
    titleMedium: DraxexTextStyle(context).style(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: color,
    ),
    titleLarge: DraxexTextStyle(context).style(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: color,
    ),
    headlineSmall: DraxexTextStyle(context).style(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color,
    ),
    headlineMedium: DraxexTextStyle(context).style(
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: color,
    ),
    headlineLarge: DraxexTextStyle(context).style(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: color,
    ),
  );
}
