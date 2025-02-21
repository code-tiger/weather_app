import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/main_divider.dart';
import 'package:weather_app/data/models/weather/weather_properties.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';
import 'package:weather_app/theme/main_box_decoration.dart';

class CurrentWeatherDetails extends StatelessWidget {
  final WeatherProperties? weatherProperties;
  final WeatherUnits? weatherUnits;

  const CurrentWeatherDetails({
    super.key,
    required this.weatherProperties,
    required this.weatherUnits,
  });

  @override
  Widget build(BuildContext context) {
    if (weatherProperties == null || weatherUnits == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        const MainDivider(),
        const SizedBox(height: 16),
        _buildDetails(),
      ],
    );
  }

  Widget _buildHeader() {
    return const Text(
      'Details',
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }

  Widget _buildDetails() {
    return Container(
      decoration: MainBoxDecoration.weatherBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            _buildWindDetails(),
            const SizedBox(height: 12),
            _buildRelativeHumidityDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildWindDetails() {
    return Row(
      children: [
        const Icon(
          Icons.air,
          color: Colors.white,
          size: 32,
        ),
        const SizedBox(width: 12),
        Text(
          'Wind: ${weatherProperties!.windSpeed10m} ${weatherUnits!.windSpeed10m}',
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(width: 12),
        Text(
          'Direction: ${weatherProperties!.getWindDirection10m()}',
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildRelativeHumidityDetails() {
    return Row(
      children: [
        const Icon(
          Icons.water_drop,
          color: Colors.white,
          size: 32,
        ),
        const SizedBox(width: 12),
        Text(
          'Relative Humidity: ${weatherProperties!.relativeHumidity2m} ${weatherUnits!.relativeHumidity2m}',
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
