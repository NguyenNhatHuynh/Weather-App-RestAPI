import 'package:flutter/material.dart';
import 'package:weather_app_restapi/constants/text_styles.dart';
import 'package:weather_app_restapi/views/gradient_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        children: [
          Text(
            'Pick Location',
            style: TextStyles.h1,
          ),
          const SizedBox(height: 30),
          Text(
            'Find the area or city that you want to know the detailed weather info at this time',
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
