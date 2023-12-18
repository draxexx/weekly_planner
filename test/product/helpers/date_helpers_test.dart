import 'package:flutter_test/flutter_test.dart';
import 'package:weekly_planner/product/helpers/date_helpers.dart';

void main() {
  DateHelpers helper = DateHelpers();

  test('localize the day name from the date', () {
    final datetime_1 = DateTime(2023, 12, 18);
    final datetime_2 = DateTime(2023, 12, 24);

    final day1 = helper.dayLocalized(datetime_1);
    final day2 = helper.dayLocalized(datetime_2);

    expect(day1, "Monday");
    expect(day2, "Sunday");
  });
}
