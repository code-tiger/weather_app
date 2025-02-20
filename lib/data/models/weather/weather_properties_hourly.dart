import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_properties_hourly.freezed.dart';

@freezed
class WeatherPropertiesHourly with _$WeatherPropertiesHourly {
  factory WeatherPropertiesHourly({
    required List<String> time,
    required List<double> temperature2m,
    required List<int> relativeHumidity2m,
    required List<double> apparentTemperature,
    required List<int> precipitationProbability,
    required List<int> visibility,
    required List<double> windSpeed10m,
    required List<int> windDirection10m,
  }) = _WeatherPropertiesHourly;
}
