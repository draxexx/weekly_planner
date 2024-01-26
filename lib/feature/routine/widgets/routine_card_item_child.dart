import 'package:flutter/material.dart';
import 'package:weekly_planner/product/helpers/date_helpers.dart';
import 'package:draxex_flutter_template/draxex.dart';

class RoutineCardItemChild extends StatelessWidget {
  const RoutineCardItemChild({
    super.key,
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DraxexText(
            text: DateHelpers().dayLocalized(date),
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
          ),
          const DraxexSleekCircularSlider(initialValue: 30),
          Column(
            children: [
              DraxexText(
                text: "15 tasks left",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
              ),
              const SizedBox(height: 4),
              DraxexText(
                text: "3 tasks completed",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
