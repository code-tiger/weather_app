import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/core/constants/config.dart';
import 'package:weather_app/data/models/weather/weather_datum.dart';
import 'package:weather_app/data/models/weather/weather_properties.dart';
import 'package:weather_app/data/models/weather/weather_properties_daily.dart';
import 'package:weather_app/data/models/weather/weather_properties_hourly.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  final Dio _dio = Dio();

  final String timeZone = 'Asia/Singapore';

  Future<WeatherDatum> getWeather(double latitude, double longitude) async {
    final response = await _dio.get(
      weatherApiUrl,
      queryParameters: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'timezone': timeZone,
        'current':
            'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,cloud_cover,wind_speed_10m,wind_direction_10m',
        'hourly':
            'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,cloud_cover,visibility,wind_speed_10m,wind_direction_10m',
        'daily':
            'temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,precipitation_probability_max,wind_speed_10m_max,wind_gusts_10m_max',
      },
    );

    return getWeatherDatum(response.data);
  }

  WeatherDatum getWeatherDatum(Map<String, dynamic> jsonData) {
    final weatherUnits = WeatherUnits.fromJson(jsonData['current_units']);

    final currentWeather = WeatherProperties.fromJson(jsonData['current']);

    final hourlyWeather = WeatherPropertiesHourly.fromJson(jsonData['hourly']);

    final dailyWeather = WeatherPropertiesDaily.fromJson(jsonData['daily']);

    return WeatherDatum(
      latitude: jsonData['latitude'],
      longitude: jsonData['longitude'],
      generationtimeMs: jsonData['generationtime_ms'],
      utcOffsetSeconds: jsonData['utc_offset_seconds'],
      timezone: jsonData['timezone'],
      timezoneAbbreviation: jsonData['timezone_abbreviation'],
      elevation: jsonData['elevation'],
      currentWeather: currentWeather,
      hourlyWeather: hourlyWeather,
      dailyWeather: dailyWeather,
      weatherUnits: weatherUnits,
    );
  }
}

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository();
}
