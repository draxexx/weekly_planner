import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/home/widgets/routine_card_item_child.dart';
import 'package:weekly_planner/feature/home/widgets/routine_card_item_top_number.dart';
import 'package:weekly_planner/product/widgets/custom_card.dart';

class RoutineCardItem extends StatelessWidget {
  const RoutineCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              CustomCard(
                child: RoutineCardItemChild(),
              ),
              Positioned(
                top: 20,
                right: 16,
                left: 16,
                child: RoutineCardItemTopNumber(text: "5"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
