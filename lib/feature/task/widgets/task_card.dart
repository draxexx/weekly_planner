import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_progress.dart';
import 'package:weekly_planner/feature/task/widgets/task_remaining_time.dart';
import 'package:weekly_planner/feature/task/widgets/task_subtasks_title.dart';
import 'package:weekly_planner/feature/task/widgets/task_tag_list.dart';
import 'package:weekly_planner/product/utils/custom_box_shadow.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_radius.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomPadding().symmetricLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "9.00 AM",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          CustomSpace().verticalMedium,
          Container(
            padding: CustomPadding().allLarge,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: CustomRadius().allMedium,
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
                CustomSpace().verticalMedium,
                CustomText(
                  text: "Create Design System",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const TaskProgress(),
                CustomSpace().verticalMedium,
                TaskSubtasksTitle(
                  onTap: () => debugPrint("open subtasks"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
