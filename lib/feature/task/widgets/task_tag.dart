import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskTag extends StatelessWidget {
  const TaskTag({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  final String text;
  final Color bgColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomPadding().symmetric(),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CustomText(
        text: text.toUpperCase(),
        style:
            Theme.of(context).textTheme.bodySmall!.copyWith(color: textColor),
      ),
    );
  }
}
