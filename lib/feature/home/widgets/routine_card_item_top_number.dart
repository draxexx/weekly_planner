import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:weekly_planner/product/utils/custom_box_shadow.dart';
import 'package:weekly_planner/product/utils/size_config.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class RoutineCardItemTopNumber extends StatelessWidget {
  const RoutineCardItemTopNumber({
    super.key,
    required this.text,
    this.size = 80,
    this.color = Colors.white,
  });

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(size),
      height: getProportionateScreenWidth(size),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: CustomColors.white,
        boxShadow: [
          CustomBoxShadow().boxShadow(blurRadius: 7),
        ],
      ),
      child: Center(
        child: CustomText(
          text: "5",
          style: AppThemeGetter(context).textTheme.titleLarge!.copyWith(
                color: AppThemeGetter(context).colorScheme.primary,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
