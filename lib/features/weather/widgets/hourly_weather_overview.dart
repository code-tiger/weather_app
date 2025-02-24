import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather/weather_properties_hourly.dart';
import 'package:weather_app/theme/main_box_decoration.dart';

class HourlyWeatherOverview extends StatelessWidget {
  final List<HourlyWeatherDatum>? hourlyWeatherData;

  const HourlyWeatherOverview({super.key, required this.hourlyWeatherData});

  @override
  Widget build(BuildContext context) {
    if (hourlyWeatherData == null || hourlyWeatherData!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: MainBoxDecoration.weatherBoxDecoration,
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final itemCount = constraints.maxWidth < 350 ? 4 : 5;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: hourlyWeatherData!
                    .take(itemCount)
                    .map((e) => _buildHourlyWeatherItem(e))
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHourlyWeatherItem(HourlyWeatherDatum hourlyWeatherDatum) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          hourlyWeatherDatum.hour,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Icon(
          hourlyWeatherDatum.weatherState.icon,
          color: Colors.white,
          size: 28,
        ),
        const SizedBox(height: 8),
        Text(
          hourlyWeatherDatum.temperature.toString(),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
