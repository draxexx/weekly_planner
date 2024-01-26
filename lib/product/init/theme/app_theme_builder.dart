import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:draxex_flutter_template/draxex.dart';

class AppThemeBuilder {
  BuildContext context;
  AppThemeBuilder(this.context) {
    themeData = lightTheme;
  }

  ThemeData themeData = ThemeData();

  // TODO: make common ThemeData
  ThemeData get lightTheme => ThemeData(
        colorScheme: themeData.colorScheme.copyWith(
          primary: CustomColors.blue,
          secondary: CustomColors.lightBlue,
          tertiary: CustomColors.white,
          background: CustomColors.background,
          surface: CustomColors.gray,
          primaryContainer: CustomColors.blue30,
        ),
        cardTheme: const CardTheme(
          color: CustomColors.white,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        unselectedWidgetColor: CustomColors.lightGray,
        textTheme: textTheme(color: CustomColors.black),
      );

  ThemeData get darkTheme => ThemeData(
        colorScheme: themeData.colorScheme.copyWith(
          primary: CustomColors.darkGray,
          secondary: CustomColors.gray,
          tertiary: CustomColors.white,
          background: CustomColors.background,
          surface: CustomColors.gray,
          primaryContainer: CustomColors.darkGray30,
        ),
        cardTheme: const CardTheme(
          color: CustomColors.white,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        unselectedWidgetColor: CustomColors.lightGray,
        textTheme: textTheme(color: CustomColors.black),
      );

  TextTheme textTheme({required Color color}) {
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
}
