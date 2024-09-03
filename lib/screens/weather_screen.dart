import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_restapi/constants/text_styles.dart';
import 'package:weather_app_restapi/extensions/datetime.dart';
import 'package:weather_app_restapi/providers/current_weather_provider.dart';
import 'package:weather_app_restapi/views/gradient_container.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(currentWeatherProvider);

    return weatherData.when(
      data: (weather) {
        return GradientContainer(
          children: [
            const SizedBox(width: double.infinity),
            Text(
              weather.name,
              style: TextStyles.h1,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(DateTime.now().dateTime),
            const SizedBox(height: 20),
            SizedBox(
              height: 260,
              child: Image.asset(
                  'assets/icons/${weather.weather[0].icon.replaceAll('n', 'd')}.png'),
            ),
            const SizedBox(height: 40),
            Text(
              weather.weather[0].description,
              style: TextStyles.h3,
            )
          ],
        );
      },
      error: (error, StackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
