import 'dart:async';

class TimerRepository {

  Stream<DateTime> updateTime() {
    return Stream.periodic(
      const Duration(minutes: 1) -
          Duration(seconds: DateTime.now().second) -
          Duration(milliseconds: DateTime.now().millisecond),
      (tick) {
        return DateTime.now();
      },
    );
  }

  String weekDays({required DateTime dateTime}) {
    int weekDay = dateTime.weekday;

    List<String> weekDays = [
      'Душанба',
      'Сешанба',
      'Чоршанба',
      'Пайшанба',
      'Жума',
      'Шанба',
      'Якшанба'
    ];
    return weekDays[weekDay - 1];
  }

  String months({required DateTime dateTime}) {
    int currentMonth = dateTime.month;

    List<String> month = [
      'Январ',
      'Феврал',
      'Март',
      'Aпрел',
      'Июн',
      'Июл',
      'Aвгуст',
      'Сентябрь',
      'Октябрь',
      'Ноябрь',
      'Декабрь'
    ];
    return month[currentMonth - 1];
  }

  String twoDigits(int n) => n.toString().padLeft(2, '0');
}
