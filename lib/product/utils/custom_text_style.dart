import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';

class CustomTextStyle {
  final BuildContext context;

  CustomTextStyle(this.context);

  TextStyle style({
    required double fontSize,
    Color? color,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: AppThemeGetter(context).themeData.primaryColor,
      fontWeight: fontWeight,
    );
  }
}
