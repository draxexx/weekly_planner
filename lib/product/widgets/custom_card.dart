import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/custom_box_shadow.dart';
import 'package:weekly_planner/product/utils/custom_linear_gradient.dart';
import 'package:weekly_planner/product/utils/size_config.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.width = .7,
    this.marginTop = 60,
    this.borderRadius = 30,
  });

  final Widget child;
  final double width, marginTop, borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: SizeConfig.screenWidth! * width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: CustomLinearGradient().linearGradient(),
        boxShadow: [
          CustomBoxShadow().boxShadow(),
        ],
      ),
      child: child,
    );
  }
}
