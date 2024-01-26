import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/theme/theme_layout.dart';
import 'package:weekly_planner/product/utils/colors.dart';

class AppThemeBuilder {
  BuildContext context;
  AppThemeBuilder(this.context) {
    themeData = lightTheme;
  }

  ThemeData themeData = ThemeData();

  // TODO: organize theme colors, textTheme, widgets
  ThemeData get lightTheme => themeLayout(
        themeData: themeData,
        colorScheme: colorScheme(
          themeData: themeData,
          primary: CustomColors.blue,
          secondary: CustomColors.lightBlue,
          tertiary: CustomColors.white,
          background: CustomColors.background,
          surface: CustomColors.gray,
          primaryContainer: CustomColors.blue30,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        unselectedWidgetColor: CustomColors.lightGray,
        textTheme: textTheme(context, color: CustomColors.black),
        cardTheme: cardTheme(color: CustomColors.white),
      );

  ThemeData get darkTheme => themeLayout(
        themeData: themeData,
        colorScheme: colorScheme(
          themeData: themeData,
          primary: CustomColors.darkGray,
          secondary: CustomColors.gray,
          tertiary: CustomColors.white,
          background: CustomColors.background,
          surface: CustomColors.gray,
          primaryContainer: CustomColors.darkGray30,
        ),
        primaryColor: CustomColors.black,
        secondaryHeaderColor: CustomColors.white,
        unselectedWidgetColor: CustomColors.lightGray,
        textTheme: textTheme(context, color: CustomColors.black),
        cardTheme: cardTheme(color: CustomColors.white),
      );
}
