import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_tabbar_view.dart';
import 'package:weekly_planner/feature/task/widgets/task_top.dart';
import 'package:weekly_planner/product/layouts/base_layout.dart';

// TODO: add back button
class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: Stack(
        children: [
          TaskTop(tabController: _tabController),
          Positioned(
            top: SizeConfig.screenHeight! * .2,
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight,
              decoration: BoxDecoration(
                borderRadius: DraxexRadius().allLarge,
                color: Theme.of(context).colorScheme.background,
              ),
              child: TaskTabBarView(tabController: _tabController),
            ),
          ),
        ],
      ),
    );
  }
}
