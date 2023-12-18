import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:weekly_planner/product/utils/custom_text_style.dart';

class AppThemeBuilder {
  BuildContext context;
  AppThemeBuilder(this.context) {
    themeData = lightTheme;
  }

  ThemeData themeData = ThemeData();

  ThemeData get lightTheme => ThemeData(
        colorScheme: themeData.colorScheme.copyWith(
          primary: CustomColors.blue,
          secondary: CustomColors.lightBlue,
          tertiary: CustomColors.white,
          background: CustomColors.background,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        textTheme: textTheme(),
      );

  ThemeData get darkTheme => ThemeData(
        colorScheme: themeData.colorScheme.copyWith(
          primary: CustomColors.darkGray,
          secondary: CustomColors.gray,
          tertiary: CustomColors.white,
          background: CustomColors.background,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        textTheme: textTheme(),
      );

  TextTheme textTheme() {
    return TextTheme(
      bodySmall: CustomTextStyle(context).style(fontSize: 12),
      bodyMedium: CustomTextStyle(context).style(fontSize: 16),
      bodyLarge: CustomTextStyle(context).style(fontSize: 20),
      titleSmall: CustomTextStyle(context).style(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: CustomTextStyle(context).style(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: CustomTextStyle(context).style(
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
