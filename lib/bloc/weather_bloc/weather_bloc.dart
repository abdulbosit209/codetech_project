import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:codetech1/data/models/weather_model.dart';
import 'package:codetech1/data/repository/weather_repository.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({required WeatherRepository repository})
      : _repository = repository,
        super(const WeatherState.loading()) {
    on<WeatherCalled>(_weatherCalled);
  }
  final WeatherRepository _repository;

  void _weatherCalled(WeatherCalled event, Emitter<WeatherState> emit) async {
    try{
      var data = await _repository.getWeather();
      emit(WeatherState.success(weatherData: data));
    }catch(e){
      emit(WeatherState.failure(errorText: e.toString()));
    }
}
}
