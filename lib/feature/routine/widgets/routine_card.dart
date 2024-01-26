import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/routine/widgets/routine_card_item_child.dart';
import 'package:weekly_planner/feature/routine/widgets/routine_card_item_top_number.dart';

class RoutineCard extends StatelessWidget {
  const RoutineCard({
    super.key,
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              DraxexCard(
                child: RoutineCardItemChild(date: date),
              ),
              Positioned(
                top: 20,
                right: 16,
                left: 16,
                child: RoutineCardItemTopNumber(text: "${date.day}"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
