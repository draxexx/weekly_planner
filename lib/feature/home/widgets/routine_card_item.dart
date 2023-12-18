import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/home/widgets/routine_card_item_child.dart';
import 'package:weekly_planner/feature/home/widgets/routine_card_item_top_number.dart';
import 'package:weekly_planner/product/widgets/custom_card.dart';

class RoutineCardItem extends StatelessWidget {
  const RoutineCardItem({
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
              CustomCard(
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
