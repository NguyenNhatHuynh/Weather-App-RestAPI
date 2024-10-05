import 'package:flutter/material.dart';
import 'package:weather_app_restapi/constants/text_styles.dart';
import 'package:weather_app_restapi/models/weather.dart';
import 'package:weather_app_restapi/extensions/double.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeatherInfoTile(
            title: 'Nhiệt độ',
            value: '${weather.main.temp}°',
          ),
          WeatherInfoTile(
            title: 'Sức gió',
            value: '${weather.wind.speed.kmh} km/h',
          ),
          WeatherInfoTile(
            title: 'Độ ẩm',
            value: '${weather.main.humidity}%',
          ),
        ],
      ),
    );
  }
}

class WeatherInfoTile extends StatelessWidget {
  const WeatherInfoTile({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyles.subtitleText,
        ),
        const SizedBox(height: 10),
        Text(value, style: TextStyles.h3)
      ],
    );
  }
}
