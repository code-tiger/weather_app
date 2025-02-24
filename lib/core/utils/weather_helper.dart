import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather/weather_state.dart';

class WeatherHelper {
  static WeatherState calculateWeatherState(
    double cloudCover,
    double precipitation,
  ) {
    if (precipitation > 0.5) {
      return WeatherState.rainy();
    } else if (cloudCover > 80) {
      return WeatherState.cloudy();
    } else if (cloudCover > 30) {
      return WeatherState.partlyCloudy();
    }

    return WeatherState.sunny();
  }

  static WeatherState calculateWeatherStateFromRainProbability(
    int precipitationProbability,
  ) {
    if (precipitationProbability > 50) {
      return WeatherState.rainy();
    } else if (precipitationProbability > 30) {
      return WeatherState.partlyCloudy();
    }

    return WeatherState.sunny();
  }
}
