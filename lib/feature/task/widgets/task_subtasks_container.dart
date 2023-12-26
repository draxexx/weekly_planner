import 'package:flutter/material.dart';
import 'package:weekly_planner/product/utils/custom_box_shadow.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_radius.dart';
import 'package:weekly_planner/product/widgets/custom_divider.dart';

class TaskSubtasksContainer extends StatelessWidget {
  const TaskSubtasksContainer({
    super.key,
    required this.controller,
    required this.animation,
  });

  final AnimationController controller;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: Container(
        height: 100,
        margin: CustomPadding().exceptTopLarge,
        padding: CustomPadding().allLarge,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: CustomRadius().bottomMedium,
          boxShadow: [
            CustomBoxShadow().boxShadow(),
          ],
        ),
        child: const Column(
          children: [CustomDivider()],
        ),
      ),
    );
  }
}
