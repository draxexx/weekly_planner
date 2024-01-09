import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/mixin/task_notification_icon_mixin.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';

class TaskNotificationIcon extends StatefulWidget {
  const TaskNotificationIcon({super.key});

  @override
  State<TaskNotificationIcon> createState() => _TaskNotificationIconState();
}

class _TaskNotificationIconState extends State<TaskNotificationIcon>
    with TaskNotificationIconMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: CustomIcon(
        icon: Icons.notification_important,
        color: isCreated
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).unselectedWidgetColor,
      ),
    );
  }
}
