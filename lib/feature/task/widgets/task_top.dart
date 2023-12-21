import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/language/locale_keys.g.dart';
import 'package:weekly_planner/product/utils/custom_linear_gradient.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskTop extends StatelessWidget {
  const TaskTop({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomPadding().horizontalLarge,
      decoration: BoxDecoration(
        gradient: CustomLinearGradient(context: context)
            .linearGradient(begin: Alignment.topRight, end: Alignment.topLeft),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Projects",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                CustomIcon(
                  icon: Icons.more_horiz,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 32,
                ),
              ],
            ),
            CustomSpace().verticalLarge2x,
            TabBar(
              controller: tabController,
              labelPadding: CustomPadding().bottomSmall,
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
    return CustomText(
      text: title.tr(),
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
