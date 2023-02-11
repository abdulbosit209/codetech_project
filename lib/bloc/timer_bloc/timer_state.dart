part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState();
}

class TimerInitial extends TimerState {
  @override
  List<Object> get props => [];
}

class TimerTickedSuccess extends TimerState {
  const TimerTickedSuccess({
    required this.date,
    required this.month,
    required this.clock,
    required this.weekDay,
  });

  final int date;
  final String weekDay;
  final String month;
  final String clock;

  TimerTickedSuccess copyWith(
    int? date,
    String? weekDay,
    String? month,
    String? clock,
  ) =>
      TimerTickedSuccess(
        date: date ?? this.date,
        month: month ?? this.month,
        clock: clock ?? this.clock,
        weekDay: weekDay ?? this.weekDay,
      );

  @override
  List<Object?> get props => [date, weekDay, month, clock];
}
