import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskRemainingTime extends StatelessWidget {
  const TaskRemainingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomIcon(icon: Icons.access_time),
        CustomSpace().horizontalSmall,
        CustomText(
          text: "4d",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).colorScheme.surface),
        ),
      ],
    );
  }
}
