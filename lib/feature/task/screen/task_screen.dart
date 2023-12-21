import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_card_list.dart';
import 'package:weekly_planner/feature/task/widgets/task_top.dart';
import 'package:weekly_planner/product/layouts/base_layout.dart';
import 'package:weekly_planner/product/utils/custom_linear_gradient.dart';
import 'package:weekly_planner/product/utils/custom_radius.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/utils/size_config.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: CustomLinearGradient(context: context).linearGradient(
                  begin: Alignment.topRight, end: Alignment.topLeft),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight! * .2,
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight,
              decoration: BoxDecoration(
                borderRadius: CustomRadius().allLarge,
                color: Theme.of(context).colorScheme.background,
              ),
              child: Column(
                children: [
                  CustomSpace().verticalLarge2x,
                  const TaskTop(),
                  CustomSpace().verticalLarge,
                  const Expanded(child: TaskCardList()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
