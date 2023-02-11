part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {}

class _TimerTicked extends TimerEvent {
  const _TimerTicked({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object> get props => [dateTime];
}
