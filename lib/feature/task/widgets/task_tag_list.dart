import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_notification_icon.dart';
import 'package:weekly_planner/feature/task/widgets/task_tag.dart';
import 'package:weekly_planner/product/utils/colors.dart';

class TaskTagList extends StatelessWidget {
  const TaskTagList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          TaskTag(
            text: "Great Designer",
            bgColor: CustomColors.gray30,
            textColor: CustomColors.gray,
          ),
          TaskTag(
            text: "High",
            bgColor: CustomColors.red30,
            textColor: CustomColors.red,
          ),
          TaskNotificationIcon(),
        ],
      ),
    );
  }
}
