import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/cities.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/data/models/weather/weather_properties.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';

class CurrentWeatherOverview extends StatelessWidget {
  final City city;
  final Function(City?) onCityChanged;
  final WeatherProperties? currentWeather;
  final WeatherUnits? weatherUnits;
  final String? timezoneAbbreviation;

  const CurrentWeatherOverview({
    super.key,
    required this.city,
    required this.onCityChanged,
    this.currentWeather,
    this.weatherUnits,
    this.timezoneAbbreviation,
  });

  @override
  Widget build(BuildContext context) {
    if (currentWeather == null || weatherUnits == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUpperSection(),
          _buildLowerSection(),
        ],
      ),
    );
  }

  Widget _buildUpperSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(city),
        const SizedBox(height: 16),
        _buildDateTime(),
      ],
    );
  }

  Widget _buildHeader(City city) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDropdown(),
        Text(
          city.region,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown() {
    return DropdownButton<City>(
      value: city,
      dropdownColor: Colors.black,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      items: Cities.allCities
          .map((city) => DropdownMenuItem<City>(
                value: city,
                child: Text(city.name),
              ))
          .toList(),
      onChanged: onCityChanged,
    );
  }

  Widget _buildDateTime() {
    if (currentWeather == null ||
        currentWeather!.getTime(timezoneAbbreviation ?? '').isEmpty) {
      return const SizedBox.shrink();
    }

    return Text(currentWeather!.getTime(timezoneAbbreviation ?? ''));
  }

  Widget _buildLowerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildWeatherState(),
        const SizedBox(height: 16),
        _buildCurrentTemperature(),
      ],
    );
  }

  Widget _buildWeatherState() {
    return Row(
      children: [
        Icon(currentWeather!.getWeatherState().icon),
        const SizedBox(width: 8),
        Text(currentWeather!
                .getWeatherState()
                .name
                .substring(0, 1)
                .toUpperCase() +
            currentWeather!.getWeatherState().name.substring(1)),
      ],
    );
  }

  Widget _buildCurrentTemperature() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Temperature now is'),
        const SizedBox(height: 8),
        Text(
          currentWeather!.getApparentTemperature(
            weatherUnits!.apparentTemperature,
          ),
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
