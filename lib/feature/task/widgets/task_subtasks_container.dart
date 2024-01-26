import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/subtask_list.dart';

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
        margin: DraxexPadding().exceptTopLarge,
        padding: DraxexPadding().allLarge,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: DraxexRadius().bottomMedium,
          boxShadow: [
            DraxexBoxShadow().boxShadow(),
          ],
        ),
        child: const Column(
          children: [
            DraxexDivider(),
            SubtaskList(),
          ],
        ),
      ),
    );
  }
}
