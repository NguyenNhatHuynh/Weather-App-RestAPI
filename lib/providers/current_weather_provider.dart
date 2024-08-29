import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_restapi/services/api_helper.dart';

final currentWeatherProvider = FutureProvider.autoDispose((ref) {
  return ApiHelper.getCurrentWeather();
});
