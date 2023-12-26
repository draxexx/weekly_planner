import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/colors.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_icon_button.dart';

class TaskCardIconButtons extends StatelessWidget {
  const TaskCardIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          icon: Icons.edit,
          onTap: () => debugPrint("edit"),
        ),
        CustomSpace().horizontalSmall,
        CustomIconButton(
          icon: Icons.delete_forever,
          onTap: () => debugPrint("delete"),
          color: CustomColors.red,
        ),
      ],
    );
  }
}
