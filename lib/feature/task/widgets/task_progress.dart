import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';

class TaskProgress extends StatelessWidget {
  const TaskProgress({super.key});

  @override
  Widget build(BuildContext context) {
    const value = .5;

    String progressText = (value * 100).toStringAsFixed(0);

    return Row(
      children: [
        Expanded(
          child: LinearProgressIndicator(
            color: Theme.of(context).colorScheme.secondary,
            value: value,
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        DraxexSpace().horizontalMedium,
        DraxexText(
          text: "$progressText%",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
