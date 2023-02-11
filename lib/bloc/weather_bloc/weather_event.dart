part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class WeatherCalled extends WeatherEvent {

  @override
  List<Object?> get props => [];
}
