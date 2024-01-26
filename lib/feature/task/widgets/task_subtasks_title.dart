import 'package:draxex_flutter_template/draxex.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/language/locale_keys.g.dart';

class TaskSubtasksTitle extends StatelessWidget {
  const TaskSubtasksTitle({
    super.key,
    required this.onTap,
    required this.isExpanded,
  });

  final void Function()? onTap;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DraxexText(
            text: LocaleKeys.task_screen_task_card_subtasks.tr(),
            style: Theme.of(context).textTheme.bodyMedium!,
            textAlign: TextAlign.center,
          ),
          DraxexIcon(
            icon:
                isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down_sharp,
            size: 24,
          ),
        ],
      ),
    );
  }
}
