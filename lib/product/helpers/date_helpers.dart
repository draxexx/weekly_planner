import 'package:intl/intl.dart';

class DateHelpers {
  List<DateTime> getCurrentWeekDates() {
    DateTime now = DateTime.now();
    DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));

    List<DateTime> currentWeekDates = [];

    for (int i = 0; i < 7; i++) {
      currentWeekDates.add(startOfWeek.add(Duration(days: i)));
    }

    return currentWeekDates;
  }

  bool checkDateIsSame(DateTime now, DateTime compared) {
    return compared.day == now.day &&
        compared.month == now.month &&
        compared.year == now.year;
  }

  // TODO: localize the day name
  String dayLocalized(DateTime date) {
    var format = DateFormat.EEEE();
    return format.format(date);
  }
}
