import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/routine/screen/routine_screen.dart';
import 'package:weekly_planner/feature/task/widgets/create_task.dart';
import 'package:weekly_planner/product/utils/custom_bottom_sheet.dart';

class BottomBarLayout extends StatefulWidget {
  const BottomBarLayout({
    super.key,
  });

  @override
  State<BottomBarLayout> createState() => _BottomBarLayoutState();
}

class _BottomBarLayoutState extends State<BottomBarLayout> {
  int _index = 1;

  void _onTap(int index) {
    if (_index == 1 && index == 1) {
      // show create task bottom sheet
      CustomBottomSheet(context: context)
          .showCustomBottomSheet(const CreateTask());
    }

    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const RoutineScreen(),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: _index,
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          // TODO: localize the texts
          _tabItem(icon: Icons.bar_chart, title: "Statistics"),
          _tabItem(
              icon: _index == 1 ? Icons.add : Icons.task, title: "Routines"),
          _tabItem(icon: Icons.account_circle, title: "Profile"),
        ],
        onTap: _onTap,
      ),
    );
  }
}

TabItem _tabItem({
  required IconData icon,
  required String title,
}) {
  return TabItem(icon: icon, title: title);
}
