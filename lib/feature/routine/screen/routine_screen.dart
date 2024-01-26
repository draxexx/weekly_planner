import 'package:draxex_flutter_template/draxex.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/routine/widgets/routine_card_list.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: init in the splash screen
    SizeConfig().init(context);
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoutineCardList(),
      ],
    );
  }
}
