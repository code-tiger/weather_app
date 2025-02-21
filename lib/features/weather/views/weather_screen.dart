import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/core/widgets/main_divider.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/features/weather/controllers/weather_screen_controller.dart';
import 'package:weather_app/data/models/weather/weather_datum.dart';
import 'package:weather_app/features/weather/widgets/current_weather_overview.dart';
import 'package:weather_app/features/weather/widgets/current_weather_details.dart';
import 'package:weather_app/features/weather/widgets/daily_weather_overview.dart';
import 'package:weather_app/features/weather/widgets/hourly_weather_overview.dart';
import 'package:weather_app/features/weather/widgets/location.dart';

class WeatherScreen extends ConsumerWidget {
  final City city;

  const WeatherScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(weatherScreenControllerProvider(city));

    return asyncData.when(
      data: (data) => WeatherDatumScreen(
        weatherDatum: data,
        city: city,
      ),
      error: (error, stack) => Center(
        child: Text(
          error.toString(),
          textAlign: TextAlign.center,
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class WeatherDatumScreen extends StatelessWidget {
  final WeatherDatum weatherDatum;
  final City city;

  const WeatherDatumScreen({
    super.key,
    required this.weatherDatum,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
              'https://picsum.photos/1280',
            ).image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          children: [
            CurrentWeatherOverview(
              city: city,
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
      ),
    );
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
