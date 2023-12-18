import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_remaining_time.dart';
import 'package:weekly_planner/feature/task/widgets/task_tag_list.dart';
import 'package:weekly_planner/product/utils/custom_box_shadow.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomPadding().all(),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        boxShadow: [
          CustomBoxShadow().boxShadow(),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              TaskTagList(),
              TaskRemainingTime(),
            ],
          ),
          CustomSpace().verticalMedium(),
          CustomText(
            text: "Create Design System",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
