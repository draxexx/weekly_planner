import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/home/widgets/routine_card_list.dart';

mixin RoutineCardListMixin on State<RoutineCardList> {
  PageController? pageController;

  int initialPage = 0;
  final List<DateTime> _currentWeek = [];

  void _setInitialPage() {
    DateTime now = DateTime.now();
    int count = 0;
    for (var i in _currentWeek) {
      if (i.day == now.day && i.month == now.month && i.year == now.year) {
        setState(() {
          initialPage = count;
        });
        return;
      }
      count++;
    }
    setState(() {
      initialPage = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    _setInitialPage();
    pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }
}
