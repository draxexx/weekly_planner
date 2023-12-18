import 'package:flutter/material.dart';
import 'package:weekly_planner/product/widgets/custom_sleek_circular_slider.dart';

class RoutineCardItemChild extends StatelessWidget {
  const RoutineCardItemChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Monday"),
          CustomSleekCircularSlider(initialValue: 30),
          Column(
            children: [
              Text("15 tasks left"),
              SizedBox(height: 5),
              Text("3 tasks completed"),
            ],
          ),
        ],
      ),
    );
  }
}
