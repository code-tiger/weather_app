import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  final Dio _dio = Dio();

  /// https://api.open-meteo.com/v1/forecast?latitude=25.0478&longitude=121.5319&current=temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,cloud_cover,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,relative_humidity_2m,apparent_temperature,precipitation_probability,visibility,wind_speed_10m,wind_direction_10m&daily=temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,wind_speed_10m_max,wind_gusts_10m_max&timezone=Asia%2FSingapore
  Future<String> getWeather(double latitude, double longitude) async {
    final response = await _dio.get(
      'https://api.open-meteo.com/v1/forecast',
      queryParameters: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'timezone': 'Asia/Singapore',
        'current':
            'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,cloud_cover,wind_speed_10m,wind_direction_10m',
        'hourly':
            'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation_probability,visibility,wind_speed_10m,wind_direction_10m',
        'daily':
            'temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,wind_speed_10m_max,wind_gusts_10m_max',
      },
    );

    return response.data.toString();
  }
}

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository();
}
