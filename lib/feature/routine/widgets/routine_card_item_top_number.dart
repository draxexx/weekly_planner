import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:draxex_flutter_template/draxex.dart';

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
          DraxexBoxShadow().boxShadow(blurRadius: 7),
        ],
      ),
      child: Center(
        child: DraxexText(
          text: text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
