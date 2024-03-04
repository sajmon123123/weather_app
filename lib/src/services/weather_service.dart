import 'dart:convert';
import 'package:appka_pogoda/src/model/weather.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  Future<WeatherData> getWeatherData() async {
    try {
      final uri = Uri.parse(
          'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        return WeatherData.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Cannot get weather');
      }
    } catch (e) {
      rethrow;
    }
  }
}
