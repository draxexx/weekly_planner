import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:weekly_planner/feature/routine/mixin/routine_card_list_mixin.dart';
import 'dart:math' as math;

import 'package:weekly_planner/feature/routine/widgets/routine_card.dart';
import 'package:weekly_planner/feature/task/screen/task_screen.dart';

class RoutineCardList extends StatefulWidget {
  const RoutineCardList({super.key});

  @override
  State<RoutineCardList> createState() => _RoutineCardListState();
}

class _RoutineCardListState extends State<RoutineCardList>
    with RoutineCardListMixin {
  final int duration = 350;
  final Curve curve = Curves.linear;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.85,
      child: PageView.builder(
        onPageChanged: (value) {
          initialPage = value;
        },
        physics: const ClampingScrollPhysics(),
        controller: pageController,
        itemCount: currentWeek.length,
        itemBuilder: (context, index) {
          return buildSlider(index);
        },
      ),
    );
  }

  Widget buildSlider(int index) {
    return AnimatedBuilder(
      animation: pageController!,
      builder: (context, child) {
        double value = 0;
        if (pageController!.position.haveDimensions) {
          value = index - pageController!.page!;
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(milliseconds: duration),
          curve: curve,
          opacity: initialPage == index ? 1 : 0.4,
          child: Transform.rotate(
            angle: math.pi * value,
            child: GestureDetector(
              onTap: () {
                // animate to the routine card, when you tap on it
                pageController!.animateToPage(index,
                    duration: Duration(milliseconds: duration), curve: curve);

                // navigate to the task screen
                if (index == initialPage) {
                  Get.to(() => const TaskScreen());
                }
              },
              child: RoutineCard(
                date: currentWeek[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
