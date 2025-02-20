import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_units.freezed.dart';

@freezed
class WeatherUnits with _$WeatherUnits {
  const factory WeatherUnits({
    @Default('iso8601') String time,
    @Default('seconds') String interval,
    @Default('°C') String temperature2m,
    @Default('°C') String temperature2mMax,
    @Default('°C') String temperature2mMin,
    @Default('%') String relativeHumidity2m,
    @Default('°C') String apparentTemperature,
    @Default('mm') String precipitation,
    @Default('mm') String precipitationSum,
    @Default('%') String precipitationProbability,
    @Default('%') String cloudCover,
    @Default('km/h') String windSpeed10m,
    @Default('km/h') String windSpeed10mMax,
    @Default('km/h') String windGusts10mMax,
    @Default('°') String windDirection10m,
    @Default('km') String visibility,
    @Default('') String uvIndexMax,
  }) = _WeatherUnits;

  factory WeatherUnits.fromJson(Map<String, dynamic> json) {
    return WeatherUnits(
      time: json['time'] ?? 'iso8601',
      interval: json['interval'] ?? 'seconds',
      temperature2m: json['temperature_2m'] ?? '°C',
      temperature2mMax: json['temperature_2m_max'] ?? '°C',
      temperature2mMin: json['temperature_2m_min'] ?? '°C',
      relativeHumidity2m: json['relative_humidity_2m'] ?? '%',
      apparentTemperature: json['apparent_temperature'] ?? '°C',
      precipitation: json['precipitation'] ?? 'mm',
      precipitationSum: json['precipitation_sum'] ?? 'mm',
      precipitationProbability: json['precipitation_probability'] ?? '%',
      cloudCover: json['cloud_cover'] ?? '%',
      windSpeed10m: json['wind_speed_10m'] ?? 'km/h',
      windSpeed10mMax: json['wind_speed_10m_max'] ?? 'km/h',
      windGusts10mMax: json['wind_gusts_10m_max'] ?? 'km/h',
      windDirection10m: json['wind_direction_10m'] ?? '°',
      visibility: json['visibility'] ?? 'km',
      uvIndexMax: json['uv_index_max'] ?? '',
    );
  }
}
