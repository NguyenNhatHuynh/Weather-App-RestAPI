import 'package:flutter/material.dart';
import 'package:weather_app_restapi/models/famous_city.dart';

class FamousCitiesView extends StatelessWidget {
  const FamousCitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: famousCities.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final city = famousCities[index];

        return FamousCityTile(
          index: index,
          city: city,
        );
      },
    );
  }
}
