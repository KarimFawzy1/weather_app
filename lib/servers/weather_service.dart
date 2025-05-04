import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '06e2d9fd8ca442f9b16234401250105';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=10');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['error']['message'];
      if (errorMessage != null) {
        throw Exception(errorMessage);
      } else {
        throw Exception('Failed to load weather data');
      }
    }
  }
}
