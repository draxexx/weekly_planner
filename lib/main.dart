import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:weekly_planner/product/init/application_initialize.dart';
import 'package:weekly_planner/product/init/language/product_localization.dart';
import 'package:weekly_planner/product/init/theme/app_theme_builder.dart';
import 'package:weekly_planner/product/layouts/bottom_bar_layout.dart';

// TODO: animate between page navigation
void main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weekly Planner',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppThemeBuilder(context).themeData,
      home: const BottomBarLayout(),
    );
  }
}
