import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_card_list.dart';
import 'package:weekly_planner/feature/task/widgets/task_list_title.dart';

class TaskTabBarView extends StatelessWidget {
  const TaskTabBarView({
    super.key,
    required this.tabController,
  });
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: const [
        TabBarViewItem(),
        TabBarViewItem(),
        TabBarViewItem(),
      ],
    );
  }
}

class TabBarViewItem extends StatelessWidget {
  const TabBarViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DraxexSpace().verticalLarge2x,
        const TaskListTitle(),
        DraxexSpace().verticalLarge,
        const Expanded(child: TaskCardList()),
      ],
    );
  }
}
