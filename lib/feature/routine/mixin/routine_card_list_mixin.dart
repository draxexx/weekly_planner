import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/routine/widgets/routine_card_list.dart';
import 'package:weekly_planner/product/helpers/date_helpers.dart';

mixin RoutineCardListMixin on State<RoutineCardList> {
  PageController? pageController;

  int initialPage = 0;
  List<DateTime> currentWeek = [];

  // set initial day according to current day
  void _setInitialDay() {
    // get current datetime
    DateTime now = DateTime.now();

    int count = 0;

    for (var i in currentWeek) {
      bool checkDateIsSame = DateHelpers().checkDateIsSame(now, i);

      if (checkDateIsSame) {
        setState(() {
          initialPage = count;
        });
        return;
      }
      count++;
    }

    setState(() {
      initialPage = count;
    });
  }

  void _setCurrentWeek() {
    currentWeek = DateHelpers().getCurrentWeekDates();
  }

  @override
  void initState() {
    super.initState();
    // set page controller
    pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );

    // set current week
    _setCurrentWeek();
    // set initial day
    _setInitialDay();
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }
}
