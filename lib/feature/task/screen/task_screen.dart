import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_card_list.dart';
import 'package:weekly_planner/product/layouts/base_layout.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: TaskCardList()),
        ],
      ),
    );
  }
}
