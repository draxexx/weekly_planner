import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:weekly_planner/product/utils/size_config.dart';

class CustomSleekCircularSlider extends StatelessWidget {
  const CustomSleekCircularSlider({
    super.key,
    required this.initialValue,
    this.min = 0,
    this.max = 100,
    this.size = 90,
    this.trackColor = CustomColors.white,
    this.progressBarColor = CustomColors.white,
    this.dotColor = CustomColors.black,
    this.trackWidth = 15,
    this.progressBarWidth = 10,
  });

  final double initialValue, size, trackWidth, progressBarWidth, min, max;
  final Color trackColor, progressBarColor, dotColor;

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
          trackColor: trackColor,
          progressBarColor: progressBarColor,
          dotColor: Colors.black,
        ),
        customWidths: CustomSliderWidths(
          trackWidth: trackWidth,
          progressBarWidth: progressBarWidth,
        ),
        infoProperties: InfoProperties(
          mainLabelStyle: TextStyle(
            color: CustomColors.white,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(20),
          ),
        ),
      ),
    );
  }
}
