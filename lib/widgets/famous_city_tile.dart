import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_restapi/constants/app_colors.dart';
import 'package:weather_app_restapi/providers/get_weather_by_city_provider.dart';

class FamousCityTile extends ConsumerWidget {
  const FamousCityTile({
    super.key,
    required this.city,
    required this.index,
  });

  final String city;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(weatherByCityNameProvider(city));

    return weatherData.when(
      data: (weather) {
        return Material(
          color: index == 0 ? AppColors.lightBlue : AppColors.accentBlue,
          elevation: index == 0 ? 8 : 0,
          borderRadius: BorderRadius.circular(25.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(weather.main.temp.round().toString()),
                        const SizedBox(height: 10),
                        Text(
                          weather.weather[0].description,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
      error: (error, StackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
