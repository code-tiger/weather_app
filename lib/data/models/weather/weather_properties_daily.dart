import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_properties_daily.freezed.dart';

@freezed
class WeatherPropertiesDaily with _$WeatherPropertiesDaily {
  factory WeatherPropertiesDaily({
    required List<String> time,
    required List<double> temperature2mMax,
    required List<double> temperature2mMin,
    required List<double> uvIndexMax,
    required List<int> precipitationSum,
    required List<double> windSpeed10mMax,
    required List<double> windGusts10mMax,
  }) = _WeatherPropertiesDaily;
}
