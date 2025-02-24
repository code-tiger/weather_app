import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/core/constants/cities.dart';
import 'package:weather_app/core/widgets/main_divider.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/features/weather/controllers/weather_screen_controller.dart';
import 'package:weather_app/data/models/weather/weather_datum.dart';
import 'package:weather_app/features/weather/widgets/current_weather_overview.dart';
import 'package:weather_app/features/weather/widgets/current_weather_details.dart';
import 'package:weather_app/features/weather/widgets/daily_weather_overview.dart';
import 'package:weather_app/features/weather/widgets/hourly_weather_overview.dart';
import 'package:weather_app/features/weather/widgets/location.dart';

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({
    super.key,
  });

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  late City _selectedCity;

  @override
  void initState() {
    super.initState();
    _selectedCity = Cities.taipei;
  }

  @override
  Widget build(BuildContext context) {
    final asyncData = ref.watch(weatherScreenControllerProvider(_selectedCity));

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
              "https://i.ibb.co/Vpk6ZFJH/background.webp",
              fit: BoxFit.cover,
            ).image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: asyncData.when(
          data: (WeatherDatum weatherDatum) => ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            children: [
              CurrentWeatherOverview(
                city: _selectedCity,
                onCityChanged: _handleCityChanged,
                currentWeather: weatherDatum.currentWeather,
                weatherUnits: weatherDatum.weatherUnits,
                timezoneAbbreviation: weatherDatum.timezoneAbbreviation,
              ),
              const SizedBox(height: 16),
              _buildForecastHeaderDivider(),
              const SizedBox(height: 16),
              HourlyWeatherOverview(
                hourlyWeatherData:
                    weatherDatum.hourlyWeather?.getNext5Hours() ?? [],
              ),
              const SizedBox(height: 16),
              DailyWeatherOverview(
                weatherPropertiesDaily: weatherDatum.dailyWeather,
              ),
              const SizedBox(height: 16),
              CurrentWeatherDetails(
                weatherProperties: weatherDatum.currentWeather,
                weatherUnits: weatherDatum.weatherUnits,
              ),
              const SizedBox(height: 16),
              Location(
                latitude: weatherDatum.latitude,
                longitude: weatherDatum.longitude,
              ),
            ],
          ),
          error: (error, stack) => Center(
            child: Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  void _handleCityChanged(City? newCity) {
    setState(() {
      _selectedCity = newCity ?? Cities.taipei;
    });
  }

  Widget _buildForecastHeaderDivider() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forecast',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4),
        MainDivider(),
      ],
    );
  }
}
