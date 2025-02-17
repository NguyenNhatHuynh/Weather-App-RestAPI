import 'package:flutter/material.dart';
import 'package:weather_app_restapi/constants/app_colors.dart';
import 'package:weather_app_restapi/screens/forecast_screen.dart';
import 'package:weather_app_restapi/screens/search_screen.dart';
import 'package:weather_app_restapi/screens/settings_screen.dart';
import 'package:weather_app_restapi/screens/weather_screen.dart';
import 'package:weather_app_restapi/services/api_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  final _screens = const [
    WeatherScreen(),
    SearchScreen(),
    ForecastReportScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    ApiHelper.getCurrentWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: AppColors.secondaryBlack,
        ),
        child: NavigationBar(
          selectedIndex: _currentPageIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) =>
              setState(() => _currentPageIndex = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined,
                  color: Color.fromARGB(255, 48, 48, 48)),
              selectedIcon:
                  Icon(Icons.home, color: Color.fromARGB(255, 54, 53, 53)),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined,
                  color: Color.fromARGB(255, 54, 53, 53)),
              selectedIcon:
                  Icon(Icons.search, color: Color.fromARGB(255, 54, 53, 53)),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.wb_sunny_outlined,
                  color: Color.fromARGB(255, 54, 53, 53)),
              selectedIcon:
                  Icon(Icons.wb_sunny, color: Color.fromARGB(255, 54, 53, 53)),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined,
                  color: Color.fromARGB(255, 54, 53, 53)),
              selectedIcon:
                  Icon(Icons.settings, color: Color.fromARGB(255, 54, 53, 53)),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
