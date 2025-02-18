import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/features/weather/providers/weather_repository.dart';

part 'weather_screen_controller.g.dart';

@riverpod
class WeatherScreenController extends _$WeatherScreenController {
  @override
  FutureOr<String> build(City city) async {
    return getWeather(city);
  }

  Future<String> getWeather(City city) async {
    final weather = await ref
        .read(weatherRepositoryProvider)
        .getWeather(city.latitude, city.longitude);

    return weather;
  }
}
