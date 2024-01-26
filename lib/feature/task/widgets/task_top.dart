import 'package:draxex_flutter_template/draxex.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/language/locale_keys.g.dart';

class TaskTop extends StatelessWidget {
  const TaskTop({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DraxexPadding().horizontalLarge,
      decoration: BoxDecoration(
        gradient: DraxexLinearGradient(context: context)
            .linearGradient(begin: Alignment.topRight, end: Alignment.topLeft),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DraxexText(
                  text: "Projects",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                DraxexIcon(
                  icon: Icons.more_horiz,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 32,
                ),
              ],
            ),
            DraxexSpace().verticalLarge2x,
            TabBar(
              controller: tabController,
              labelPadding: DraxexPadding().bottomSmall,
              indicatorColor: Theme.of(context).colorScheme.tertiary,
              dividerColor: Colors.transparent,
              tabs: const [
                TabBarTitle(title: LocaleKeys.tabbar_title_task_ongoing),
                TabBarTitle(title: LocaleKeys.tabbar_title_task_pending),
                TabBarTitle(title: LocaleKeys.tabbar_title_task_completed),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarTitle extends StatelessWidget {
  const TabBarTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return DraxexText(
      text: title.tr(),
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
