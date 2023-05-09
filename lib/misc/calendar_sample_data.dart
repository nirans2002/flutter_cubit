import 'utils.dart';

Map<DateTime, List<Event>> getEventdata() {
  Map<DateTime, List<Event>> calendarSampleData = {};
  //for current month
//   alternate days
  for (var i = 0; i <= 30; i++) {
    if (i.isEven) {
      calendarSampleData.addAll({
        DateTime.utc(DateTime.now().year, DateTime.now().month, i): [
          const Event('streak'),
        ],
      });
    }
  }

  //for  month before
//   weekends
  for (var i = 0; i <= 30; i++) {
    DateTime day =
        DateTime.utc(DateTime.now().year, DateTime.now().month - 1, i);
    if ((day.weekday == 6) || (day.weekday == 7)) {
      calendarSampleData.addAll({
        day: [
          const Event('streak'),
        ],
      });
    }
  }
  return calendarSampleData;
}
