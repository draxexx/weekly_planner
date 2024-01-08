import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/subtask_item.dart';

mixin SubtaskItemMixin on State<SubtaskItem> {
  bool isSelected = false;

  void toggle() {
    setState(() => isSelected = !isSelected);
  }
}
