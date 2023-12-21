import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_radius.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskListTitle extends StatelessWidget {
  const TaskListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomPadding().horizontalLarge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "My Task",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const DateContainer(),
        ],
      ),
    );
  }
}

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomPadding().symmetricMedium,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: CustomRadius().allSmall,
      ),
      child: Row(
        children: [
          CustomIcon(
            icon: Icons.date_range,
            color: Theme.of(context).colorScheme.primary,
          ),
          CustomSpace().horizontalSmall,
          CustomText(
            text: "15 March",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ],
      ),
    );
  }
}
