import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_radius.dart';
import 'package:weekly_planner/product/utils/size_config.dart';

class CustomBottomSheet {
  final BuildContext context;

  CustomBottomSheet({required this.context});

  void showCustomBottomSheet(Widget child,
      {bool ignoreSafeArea = true,
      bool isScrollControlled = true,
      bool isDismissible = true,
      Color? backgroundColor}) {
    Get.bottomSheet(
      ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: Get.height * .8,
        ),
        child: Container(
          width: SizeConfig.screenWidth,
          padding: CustomPadding().symmetricLarge2x,
          decoration: BoxDecoration(
            borderRadius: CustomRadius().topLarge2x,
            color: backgroundColor ?? Theme.of(context).colorScheme.background,
          ),
          child: SingleChildScrollView(child: child),
        ),
      ),
      ignoreSafeArea: ignoreSafeArea,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
    );
  }
}
