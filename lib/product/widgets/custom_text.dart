import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final TextStyle? style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppThemeGetter(context).textTheme.bodyMedium,
      textAlign: textAlign,
    );
  }
}
