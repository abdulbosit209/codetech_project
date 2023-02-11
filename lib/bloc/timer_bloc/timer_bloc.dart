import 'package:bloc/bloc.dart';
import 'package:codetech1/data/repository/timer_repository.dart';
import 'package:equatable/equatable.dart';

part 'timer_event.dart';

part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc({required TimerRepository repository})
      : _repository = repository,
        super(TimerInitial()) {
    on<TimerStarted>(_onStarted);
    on<_TimerTicked>(_timerTicked);
  }

  final TimerRepository _repository;

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    add(_TimerTicked(dateTime: DateTime.now()));
    _repository
        .updateTime()
        .listen((date) => add(_TimerTicked(dateTime: date)));
  }

  void _timerTicked(_TimerTicked event, Emitter<TimerState> emit) {
    emit(
      TimerTickedSuccess(
        date: event.dateTime.day,
        month: _repository.months(dateTime: event.dateTime),
        clock: "${_repository.twoDigits(event.dateTime.hour)} : ${_repository.twoDigits(event.dateTime.minute)}",
        weekDay: _repository.weekDays(dateTime: event.dateTime),
      ),
    );
  }
}
