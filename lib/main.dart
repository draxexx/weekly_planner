import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:weekly_planner/product/init/theme/app_theme_builder.dart';
import 'package:weekly_planner/product/layouts/bottom_bar_layout.dart';

// TODO: animate between page navigation
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemeBuilder(context).themeData,
      home: const BottomBarLayout(),
    );
  }
}
