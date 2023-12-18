import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeGetter(context).colorScheme.background,
      body: body,
    );
  }
}
