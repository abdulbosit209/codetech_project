import 'package:codetech1/data/models/weather_model.dart';
import 'package:codetech1/data/service/api_provider.dart';

class WeatherRepository {
  WeatherRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<WeatherModel> getWeather()async{
    return await apiProvider.getWeather();
  }

}