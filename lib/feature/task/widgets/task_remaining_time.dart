import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';

class TaskRemainingTime extends StatelessWidget {
  const TaskRemainingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DraxexIcon(icon: Icons.access_time),
        DraxexSpace().horizontalSmall,
        DraxexText(
          text: "4d",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).colorScheme.surface),
        ),
      ],
    );
  }
}
