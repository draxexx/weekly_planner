import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/mixin/task_notification_icon_mixin.dart';

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
      child: DraxexIcon(
        icon: Icons.notification_important,
        color: isCreated
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).unselectedWidgetColor,
      ),
    );
  }
}
