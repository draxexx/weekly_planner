import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_card.dart';

class TaskCardList extends StatelessWidget {
  const TaskCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: ((context, index) => const TaskCard()),
    );
  }
}
