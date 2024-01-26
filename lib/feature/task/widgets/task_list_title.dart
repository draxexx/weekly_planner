import 'package:draxex_flutter_template/draxex.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/language/locale_keys.g.dart';

class TaskListTitle extends StatelessWidget {
  const TaskListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: DraxexPadding().horizontalLarge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DraxexText(
            text: LocaleKeys.task_screen_content_title.tr(),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const DateContainer(),
        ],
      ),
    );
  }
}

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DraxexPadding().symmetricMedium,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: DraxexRadius().allSmall,
      ),
      child: Row(
        children: [
          DraxexIcon(
            icon: Icons.date_range,
            color: Theme.of(context).colorScheme.primary,
          ),
          DraxexSpace().horizontalSmall,
          DraxexText(
            text: "15 March",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ],
      ),
    );
  }
}
