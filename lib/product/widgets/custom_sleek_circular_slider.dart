import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:weekly_planner/product/init/theme/app_theme_getter.dart';
import 'package:weekly_planner/product/utils/size_config.dart';

class CustomSleekCircularSlider extends StatelessWidget {
  const CustomSleekCircularSlider({
    super.key,
    required this.initialValue,
    this.min = 0,
    this.max = 100,
    this.size = 90,
    this.trackColor,
    this.progressBarColor,
    this.dotColor,
    this.trackWidth = 15,
    this.progressBarWidth = 10,
  });

  final double initialValue, size, trackWidth, progressBarWidth, min, max;
  final Color? trackColor, progressBarColor, dotColor;

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      initialValue: initialValue,
      min: min,
      max: max,
      appearance: CircularSliderAppearance(
        size: getProportionateScreenWidth(size),
        startAngle: 100,
        angleRange: 360,
        customColors: CustomSliderColors(
          trackColor:
              trackColor ?? AppThemeGetter(context).colorScheme.tertiary,
          progressBarColor:
              progressBarColor ?? AppThemeGetter(context).colorScheme.primary,
          dotColor: dotColor ?? AppThemeGetter(context).colorScheme.tertiary,
        ),
        customWidths: CustomSliderWidths(
          trackWidth: trackWidth,
          progressBarWidth: progressBarWidth,
        ),
        infoProperties: InfoProperties(
          mainLabelStyle: AppThemeGetter(context).textTheme.bodyLarge!.copyWith(
                color: AppThemeGetter(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
