import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

enum WeatherStateNames {
  sunny,
  cloudy,
  partlyCloudy,
  rainy,
}

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
    required String name,
    required IconData icon,
  }) = _WeatherState;

  factory WeatherState.sunny() {
    return WeatherState(
      name: WeatherStateNames.sunny.name,
      icon: Icons.sunny,
    );
  }

  factory WeatherState.cloudy() {
    return WeatherState(
      name: WeatherStateNames.cloudy.name,
      icon: Icons.cloud,
    );
  }

  factory WeatherState.partlyCloudy() {
    return WeatherState(
      name: WeatherStateNames.partlyCloudy.name,
      icon: Icons.cloud_queue,
    );
  }

  factory WeatherState.rainy() {
    return WeatherState(
      name: WeatherStateNames.rainy.name,
      icon: Icons.water_drop,
    );
  }
}
