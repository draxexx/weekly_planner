import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/mixin/subtask_item_mixin.dart';

class SubtaskItem extends StatefulWidget {
  const SubtaskItem({super.key});

  @override
  State<SubtaskItem> createState() => _SubtaskItemState();
}

class _SubtaskItemState extends State<SubtaskItem> with SubtaskItemMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: Padding(
        padding: DraxexPadding().verticalSmall,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _checkCircle(context),
            DraxexSpace().horizontalSmall,
            _subtaskTitle(context),
            DraxexSpace().horizontalSmall,
            _editButton,
          ],
        ),
      ),
    );
  }

  DraxexIconButton get _editButton =>
      DraxexIconButton(icon: Icons.edit, onTap: () {});

  Expanded _subtaskTitle(BuildContext context) {
    return Expanded(
      child: DraxexText(
        text: "Random Subtasks",
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            decoration:
                isSelected ? TextDecoration.lineThrough : TextDecoration.none,
            color: isSelected
                ? Theme.of(context).unselectedWidgetColor
                : Theme.of(context).primaryColor),
      ),
    );
  }

  DraxexIcon _checkCircle(BuildContext context) {
    return DraxexIcon(
      icon: Icons.check_circle,
      color: isSelected
          ? Theme.of(context).colorScheme.secondary
          : Theme.of(context).unselectedWidgetColor,
      size: 24,
    );
  }
}
