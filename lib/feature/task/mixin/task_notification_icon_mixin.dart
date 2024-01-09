import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_notification_icon.dart';

mixin TaskNotificationIconMixin on State<TaskNotificationIcon> {
  bool isCreated = false;

  void toggle() {
    setState(() => isCreated = !isCreated);
  }
}
