import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_properties.freezed.dart';

@freezed
class WeatherProperties with _$WeatherProperties {
  factory WeatherProperties({
    required String time,
    required String interval,
    required String temperature2m,
    required String relativeHumidity2m,
    required String apparentTemperature,
    required String precipitation,
    required String cloudCover,
    required String windSpeed10m,
    required String windDirection10m,
  }) = _WeatherProperties;

  WeatherProperties._();

  String getTime(String timeZoneAbbreviation) {
    return '${DateTime.parse(time).toLocal().toString().split('.')[0]} ($timeZoneAbbreviation)';
  }

  String getTemperature2m(String unit) {
    return '$temperature2m $unit';
  }

  String getRelativeHumidity2m(String unit) {
    return '$relativeHumidity2m $unit';
  }

  String getApparentTemperature(String unit) {
    return '$apparentTemperature $unit';
  }

  String getPrecipitation(String unit) {
    return '$precipitation $unit';
  }

  String getCloudCover(String unit) {
    return '$cloudCover $unit';
  }

  String getWindSpeed10m(String unit) {
    return '$windSpeed10m $unit';
  }

  String getWindDirection10m(String unit) {
    return '$windDirection10m $unit';
  }

  /// it takes the json data from the api and returns a WeatherProperties object
  /// e.g. jsonData['current']
  factory WeatherProperties.fromJson(Map<String, dynamic> json) {
    return WeatherProperties(
      time: json['time'].toString(),
      interval: json['interval'].toString(),
      temperature2m: json['temperature_2m'].toString(),
      relativeHumidity2m: json['relative_humidity_2m'].toString(),
      apparentTemperature: json['apparent_temperature'].toString(),
      precipitation: json['precipitation'].toString(),
      cloudCover: json['cloud_cover'].toString(),
      windSpeed10m: json['wind_speed_10m'].toString(),
      windDirection10m: json['wind_direction_10m'].toString(),
    );
  }
}
