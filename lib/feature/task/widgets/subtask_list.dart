import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/subtask_item.dart';

class SubtaskList extends StatelessWidget {
  const SubtaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: ((context, index) => const SubtaskItem()),
    );
  }
}
