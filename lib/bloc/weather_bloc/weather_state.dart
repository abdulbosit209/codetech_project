part of 'weather_bloc.dart';

enum WeatherStatus { failure, success, loading }

class WeatherState extends Equatable {
  const WeatherState._({
    this.weatherData,
    this.status = WeatherStatus.loading,
    this.errorText,
  });

  final WeatherModel? weatherData;
  final WeatherStatus status;
  final String? errorText;

  const WeatherState.loading() : this._();

  const WeatherState.success({
    required WeatherModel weatherData,
  }) : this._(
          weatherData: weatherData,
          status: WeatherStatus.success,
        );

  const WeatherState.failure({required String errorText})
      : this._(
          errorText: errorText,
          status: WeatherStatus.failure,
        );

  @override
  List<Object?> get props => [weatherData, status, errorText];
}
