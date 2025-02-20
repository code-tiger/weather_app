import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/data/models/weather/weather_properties.dart';
import 'package:weather_app/data/models/weather/weather_properties_daily.dart';
import 'package:weather_app/data/models/weather/weather_properties_hourly.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';
import 'package:weather_app/features/weather/controllers/weather_screen_controller.dart';
import 'package:weather_app/data/models/weather/weather_datum.dart';
import 'package:weather_app/features/weather/widgets/weather_info_block.dart';

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

  String get timeString => weatherDatum.currentWeather?.time ?? '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather Details',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Current Weather',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            WeatherInfoBlock(
              title: 'City',
              value: city.name,
            ),
            WeatherInfoBlock(
              title: 'Time',
              value: weatherDatum.currentWeather
                      ?.getTime(weatherDatum.timezoneAbbreviation) ??
                  '',
            ),
            _buildCurrentWeatherDetail(
              weatherDatum.currentWeather,
              weatherDatum.weatherUnits,
            ),
            _build7DayWeatherDetail(
              weatherDatum.dailyWeather,
              weatherDatum.weatherUnits,
            ),
            _build7HoursWeatherDetail(
              weatherDatum.hourlyWeather,
              weatherDatum.weatherUnits,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentWeatherDetail(
    WeatherProperties? currentWeather,
    WeatherUnits weatherUnits,
  ) {
    if (currentWeather == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WeatherInfoBlock(
          title: 'Apparent Temperature',
          value: currentWeather.getApparentTemperature(
            weatherUnits.apparentTemperature,
          ),
        ),
        WeatherInfoBlock(
          title: 'Precipitation',
          value: currentWeather.getPrecipitation(
            weatherUnits.precipitation,
          ),
        ),
        WeatherInfoBlock(
          title: 'Cloud Cover',
          value: currentWeather.getCloudCover(
            weatherUnits.cloudCover,
          ),
        ),
        WeatherInfoBlock(
          title: 'Wind Speed',
          value: currentWeather.getWindSpeed10m(
            weatherUnits.windSpeed10m,
          ),
        ),
        WeatherInfoBlock(
          title: 'Wind Direction',
          value: currentWeather.getWindDirection10m(
            weatherUnits.windDirection10m,
          ),
        ),
        WeatherInfoBlock(
          title: 'Relative Humidity',
          value: currentWeather.getRelativeHumidity2m(
            weatherUnits.relativeHumidity2m,
          ),
        ),
      ],
    );
  }

  Widget _build7DayWeatherDetail(
    WeatherPropertiesDaily? dailyWeather,
    WeatherUnits weatherUnits,
  ) {
    return const SizedBox.shrink();
  }

  Widget _build7HoursWeatherDetail(
    WeatherPropertiesHourly? hourlyWeather,
    WeatherUnits weatherUnits,
  ) {
    return const SizedBox.shrink();
  }
}
