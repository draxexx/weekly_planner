import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:weekly_planner/product/utils/custom_text_style.dart';

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
        ),
        cardTheme: const CardTheme(
          color: CustomColors.white,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        textTheme: textTheme(color: CustomColors.black),
      );

  ThemeData get darkTheme => ThemeData(
        colorScheme: themeData.colorScheme.copyWith(
          primary: CustomColors.darkGray,
          secondary: CustomColors.gray,
          tertiary: CustomColors.white,
          background: CustomColors.background,
          surface: CustomColors.gray,
        ),
        cardTheme: const CardTheme(
          color: CustomColors.white,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        textTheme: textTheme(color: CustomColors.black),
      );

  TextTheme textTheme({required Color color}) {
    return TextTheme(
      labelSmall: CustomTextStyle(context).style(
        fontSize: 6,
        color: color,
      ),
      labelMedium: CustomTextStyle(context).style(
        fontSize: 8,
        color: color,
      ),
      labelLarge: CustomTextStyle(context).style(
        fontSize: 10,
        color: color,
      ),
      bodySmall: CustomTextStyle(context).style(
        fontSize: 12,
        color: color,
      ),
      bodyMedium: CustomTextStyle(context).style(
        fontSize: 16,
        color: color,
      ),
      bodyLarge: CustomTextStyle(context).style(
        fontSize: 20,
        color: color,
      ),
      titleSmall: CustomTextStyle(context).style(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      titleMedium: CustomTextStyle(context).style(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      titleLarge: CustomTextStyle(context).style(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
