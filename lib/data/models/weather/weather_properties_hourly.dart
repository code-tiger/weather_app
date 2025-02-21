import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/utils/weather_helper.dart';
import 'package:weather_app/data/models/weather/weather_state.dart';

part 'weather_properties_hourly.freezed.dart';

@freezed
class WeatherPropertiesHourly with _$WeatherPropertiesHourly {
  factory WeatherPropertiesHourly({
    required List<String> times,
    required List<double> temperatures2m,
    required List<int> relativeHumidities2m,
    required List<double> apparentTemperatures,
    required List<int> precipitations,
    required List<int> cloudCovers,
    required List<int> visibilities,
    required List<double> windSpeeds10m,
    required List<int> windDirections10m,
  }) = _WeatherPropertiesHourly;

  factory WeatherPropertiesHourly.fromJson(Map<String, dynamic> json) {
    return WeatherPropertiesHourly(
      times: List<String>.from(json['time']),
      temperatures2m: List<double>.from(json['temperature_2m']),
      relativeHumidities2m: List<int>.from(json['relative_humidity_2m']),
      apparentTemperatures: List<double>.from(json['apparent_temperature']),
      precipitations: List<int>.from(json['precipitation']),
      cloudCovers: List<int>.from(json['cloud_cover']),
      visibilities: List<int>.from(json['visibility']),
      windSpeeds10m: List<double>.from(json['wind_speed_10m']),
      windDirections10m: List<int>.from(json['wind_direction_10m']),
    );
  }

  WeatherPropertiesHourly._();

  List<HourlyWeatherDatum> getNext5Hours(String unit) {
    final now = DateTime.now();

    final currentHourIndex = times.indexWhere((timeStr) {
      final dateTime = DateTime.parse(timeStr);
      return dateTime.hour == now.hour;
    });

    if (currentHourIndex == -1) {
      return [];
    }

    final next5Hours = List<HourlyWeatherDatum>.generate(6, (index) {
      final hourIndex = currentHourIndex + index;

      final dateTime = DateTime.parse(times[hourIndex]);
      final hour = dateTime.hour;
      final period = hour >= 12 ? 'PM' : 'AM';
      final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
      final formattedHour = '$displayHour $period';

      return HourlyWeatherDatum(
        hour: formattedHour,
        weatherState: WeatherHelper.calculateWeatherState(
          double.tryParse(cloudCovers[hourIndex].toString()) ?? 0,
          double.tryParse(precipitations[hourIndex].toString()) ?? 0,
        ),
        temperature: '${temperatures2m[hourIndex].toString()} $unit',
      );
    });

    return next5Hours;
  }
}

@freezed
class HourlyWeatherDatum with _$HourlyWeatherDatum {
  factory HourlyWeatherDatum({
    required String hour,
    required WeatherState weatherState,
    required String temperature,
  }) = _HourlyWeatherDatum;
}
