import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/utils/datetime_helper.dart';
import 'package:weather_app/core/utils/weather_helper.dart';
import 'package:weather_app/data/models/weather/weather_state.dart';
import 'package:weather_app/data/models/weather/weather_units.dart';

part 'weather_properties_daily.freezed.dart';

@freezed
class WeatherPropertiesDaily with _$WeatherPropertiesDaily {
  factory WeatherPropertiesDaily({
    required List<String> time,
    required List<double> temperature2mMax,
    required List<double> temperature2mMin,
    required List<double> uvIndexMax,
    required List<double> precipitationSum,
    required List<int> precipitationProbabilityMax,
    required List<double> windSpeed10mMax,
    required List<double> windGusts10mMax,
  }) = _WeatherPropertiesDaily;

  factory WeatherPropertiesDaily.fromJson(Map<String, dynamic> json) {
    return WeatherPropertiesDaily(
      time: List<String>.from(json['time']),
      temperature2mMax: List<double>.from(json['temperature_2m_max']),
      temperature2mMin: List<double>.from(json['temperature_2m_min']),
      uvIndexMax: List<double>.from(json['uv_index_max']),
      precipitationSum: List<double>.from(json['precipitation_sum']),
      precipitationProbabilityMax:
          List<int>.from(json['precipitation_probability_max']),
      windSpeed10mMax: List<double>.from(json['wind_speed_10m_max']),
      windGusts10mMax: List<double>.from(json['wind_gusts_10m_max']),
    );
  }

  WeatherPropertiesDaily._();

  List<DailyWeatherDatum> getDailyWeatherData() {
    return List.generate(
        time.length,
        (index) => DailyWeatherDatum(
              day: DateTimeHelper.getDayOfWeek(
                  DateTime.parse(time[index]).weekday),
              weatherState:
                  WeatherHelper.calculateWeatherStateFromRainProbability(
                precipitationProbabilityMax[index],
              ),
              rainProbability: '${precipitationProbabilityMax[index]}%',
              maxTemperature:
                  '${temperature2mMax[index]} ${const WeatherUnits().temperature2m}',
              minTemperature:
                  '${temperature2mMin[index]} ${const WeatherUnits().temperature2m}',
            ));
  }
}

@freezed
class DailyWeatherDatum with _$DailyWeatherDatum {
  factory DailyWeatherDatum({
    required String day,
    required WeatherState weatherState,
    required String rainProbability,
    required String maxTemperature,
    required String minTemperature,
  }) = _DailyWeatherDatum;
}
