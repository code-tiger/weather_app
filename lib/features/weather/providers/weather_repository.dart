import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/core/constants/config.dart';
import 'package:weather_app/data/models/weather/weather_datum.dart';
import 'package:weather_app/data/models/weather/weather_properties.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  final Dio _dio = Dio();

  final String timeZone = 'Asia/Singapore';

  /// https://api.open-meteo.com/v1/forecast?latitude=25.0478&longitude=121.5319&current=temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,cloud_cover,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,relative_humidity_2m,apparent_temperature,precipitation_probability,visibility,wind_speed_10m,wind_direction_10m&daily=temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,wind_speed_10m_max,wind_gusts_10m_max&timezone=Asia%2FSingapore
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
            'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation_probability,visibility,wind_speed_10m,wind_direction_10m',
        'daily':
            'temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,wind_speed_10m_max,wind_gusts_10m_max',
      },
    );

    return getWeatherDatum(response.data);
  }

  WeatherDatum getWeatherDatum(Map<String, dynamic> jsonData) {
    // Parse the JSON string
    // final Map<String, dynamic> jsonData = jsonString.startsWith('{')
    //     ? json.decode(jsonString)
    // Create WeatherUnits instance
    final weatherUnits = WeatherUnits.fromJson(jsonData['current_units']);

    // Create WeatherProperties instance for current weather
    final currentWeather = WeatherProperties.fromJson(jsonData['current']);

    // Create WeatherPropertiesHourly instance
    // final hourlyWeather = WeatherPropertiesHourly(
    //   time: List<String>.from(jsonData['hourly']['time']),
    //   temperature2m: List<double>.from(jsonData['hourly']['temperature_2m']),
    //   relativeHumidity2m:
    //       List<int>.from(jsonData['hourly']['relative_humidity_2m']),
    //   apparentTemperature:
    //       List<double>.from(jsonData['hourly']['apparent_temperature']),
    //   precipitationProbability:
    //       List<int>.from(jsonData['hourly']['precipitation_probability']),
    //   visibility: List<int>.from(jsonData['hourly']['visibility']),
    //   windSpeed10m: List<double>.from(jsonData['hourly']['wind_speed_10m']),
    //   windDirection10m:
    //       List<int>.from(jsonData['hourly']['wind_direction_10m']),
    // );

    // Create WeatherPropertiesDaily instance
    // final dailyWeather = WeatherPropertiesDaily(
    //   time: List<String>.from(jsonData['daily']['time']),
    //   temperature2mMax:
    //       List<double>.from(jsonData['daily']['temperature_2m_max']),
    //   temperature2mMin:
    //       List<double>.from(jsonData['daily']['temperature_2m_min']),
    //   uvIndexMax: List<double>.from(jsonData['daily']['uv_index_max']),
    //   precipitationSum: List<int>.from(jsonData['daily']['precipitation_sum']),
    //   windSpeed10mMax:
    //       List<double>.from(jsonData['daily']['wind_speed_10m_max']),
    //   windGusts10mMax:
    //       List<double>.from(jsonData['daily']['wind_gusts_10m_max']),
    // );

    // Create and return WeatherDatum instance
    return WeatherDatum(
      latitude: jsonData['latitude'],
      longitude: jsonData['longitude'],
      generationtimeMs: jsonData['generationtime_ms'],
      utcOffsetSeconds: jsonData['utc_offset_seconds'],
      timezone: jsonData['timezone'],
      timezoneAbbreviation: jsonData['timezone_abbreviation'],
      elevation: jsonData['elevation'],
      currentWeather: currentWeather,
      // hourlyWeather: hourlyWeather,
      // dailyWeather: dailyWeather,
      weatherUnits: weatherUnits,
    );
  }
}

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository();
}
