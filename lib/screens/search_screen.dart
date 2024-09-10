import 'package:flutter/material.dart';
import 'package:weather_app_restapi/constants/text_styles.dart';
import 'package:weather_app_restapi/views/gradient_container.dart';
import 'package:weather_app_restapi/widgets/round_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          Row(
            children: [
              Expanded(
                child: RoundTextField(
                  controller: _controller,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
