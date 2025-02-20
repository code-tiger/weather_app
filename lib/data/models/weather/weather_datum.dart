import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/weather/weather_properties.dart';
import 'package:weather_app/data/models/weather/weather_properties_daily.dart';
import 'package:weather_app/data/models/weather/weather_properties_hourly.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';

part 'weather_datum.freezed.dart';

@freezed
class WeatherDatum with _$WeatherDatum {
  factory WeatherDatum({
    required double latitude,
    required double longitude,
    required double generationtimeMs,
    required int utcOffsetSeconds,
    required String timezone,
    required String timezoneAbbreviation,
    required double elevation,
    WeatherProperties? currentWeather,
    WeatherPropertiesHourly? hourlyWeather,
    WeatherPropertiesDaily? dailyWeather,
    @Default(WeatherUnits()) WeatherUnits weatherUnits,
  }) = _WeatherDatum;
}
