import 'dart:convert';

class WeatherData {
  final double latitude;
  final double longitude;
  final double generationTimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final double elevation;
  final List<String> time;
  final List<double> temperature;

  WeatherData({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.time,
    required this.temperature,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      latitude: json['latitude'],
      longitude: json['longitude'],
      generationTimeMs: json['generationtime_ms'],
      utcOffsetSeconds: json['utc_offset_seconds'],
      timezone: json['timezone'],
      timezoneAbbreviation: json['timezone_abbreviation'],
      elevation: json['elevation'],
      time: List<String>.from(json['hourly']['time']),
      temperature: List<double>.from(json['hourly']['temperature_2m']),
    );
  }

  static WeatherData parseWeatherData(String jsonString) =>
      WeatherData.fromJson(jsonDecode(jsonString));
}
