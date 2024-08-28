import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show immutable;

import '../constants/constants.dart';
import '../models/hourly_weather.dart';
import '../models/weather.dart';
import '../models/weekly_weather.dart';
import '../services/geolocator.dart';
import '../utils/logging.dart';

@immutable
class ApiHelper {
  static const baseUrl = 'https://api.openweathermap.org/data/3.0';
  static const WeeklyWeatherUrl =
      'https://api.open-meteo.com/v1/forecast?current=&daily=weather_code,temperature_2m_max,temperature_2m_min&timezone=auto';

  static double lat = 0.0;
  static double lon = 0.0;
  static final dio = Dio();

  // Get lat and lon
  static Future<void> fetchLocation() async {
    final location = await getLocation();
    lat = location.latitude;
    lon = location.longitude;
  }

  // Current Weather
  static Future<Weather> getCurrentWeather() async {
    await fetchLocation();
    final url = _constructWeatherUrl();
    final response = await _fetchData(url);
    return Weather.fromJson(response);
  }

  // Build urls
  static String _constructWeatherUrl() =>
      '$baseUrl/weather?lat=$lat$lon&units=metric&appid=${Constants.apiKey}';

  static String _constructForecastUrl() =>
      '$baseUrl/forecast?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  static String _constructWeatherByCityUrl(String cityName) =>
      '$baseUrl/weather?q=$cityName&units=metric&appid=${Constants.apiKey}';

  static String _constructWeeklyForecastUrl() =>
      '$WeeklyWeatherUrl&latitude=$lat&longitude=$lon';
}
