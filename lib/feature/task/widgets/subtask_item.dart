import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/mixin/subtask_item_mixin.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';
import 'package:weekly_planner/product/widgets/custom_icon_button.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

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
        padding: CustomPadding().verticalSmall,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _checkCircle(context),
            CustomSpace().horizontalSmall,
            _subtaskTitle(context),
            CustomSpace().horizontalSmall,
            _editButton,
          ],
        ),
      ),
    );
  }

  CustomIconButton get _editButton =>
      CustomIconButton(icon: Icons.edit, onTap: () {});

  Expanded _subtaskTitle(BuildContext context) {
    return Expanded(
      child: CustomText(
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

  CustomIcon _checkCircle(BuildContext context) {
    return CustomIcon(
      icon: Icons.check_circle,
      color: isSelected
          ? Theme.of(context).colorScheme.secondary
          : Theme.of(context).unselectedWidgetColor,
      size: 24,
    );
  }
}
