import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/home/widgets/routine_card_list.dart';
import 'package:weekly_planner/product/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoutineCardList(),
      ],
    );
  }
}
