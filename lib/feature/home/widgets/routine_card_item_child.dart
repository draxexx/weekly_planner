import 'package:flutter/material.dart';
import 'package:weekly_planner/product/helpers/date_helpers.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';
import 'package:weekly_planner/product/widgets/custom_sleek_circular_slider.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class RoutineCardItemChild extends StatelessWidget {
  const RoutineCardItemChild({
    super.key,
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            text: DateHelpers().dayLocalized(date),
            style: AppThemeGetter(context).textTheme.titleSmall!.copyWith(
                  color: AppThemeGetter(context).colorScheme.tertiary,
                ),
          ),
          const CustomSleekCircularSlider(initialValue: 30),
          Column(
            children: [
              CustomText(
                text: "15 tasks left",
                style: AppThemeGetter(context).textTheme.bodyMedium!.copyWith(
                      color: AppThemeGetter(context).colorScheme.tertiary,
                    ),
              ),
              const SizedBox(height: 4),
              CustomText(
                text: "3 tasks completed",
                style: AppThemeGetter(context).textTheme.bodyMedium!.copyWith(
                      color: AppThemeGetter(context).colorScheme.tertiary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
