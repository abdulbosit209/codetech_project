import 'package:codetech1/data/models/weather_model.dart';
import 'package:codetech1/data/service/api_client.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final ApiClient apiClient;

  ApiProvider({required this.apiClient});

  Future<WeatherModel> getWeather() async {
    try{
      Response response = await apiClient.dio.get(
        "${apiClient.dio.options.baseUrl}/v1/forecast",
        queryParameters: {
          "latitude": "41.311081",
          "longitude": "69.240562",
          "current_weather": 'true',
          "hourly": "temperature_2m,relativehumidity_2m,windspeed_10m"
        },
      );

      if(response.statusCode! >= 200 && response.statusCode! < 300){
        WeatherModel weatherModel = WeatherModel.fromJson(response.data);
        return weatherModel;
      } else {
        throw Exception();
      }
    } on DioError catch(e){
      print(e.response!.statusCode);
      throw Exception(e);
    }
  }
}
