import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/models/city.dart';
import 'package:weather_app/features/weather/controllers/weather_screen_controller.dart';

class WeatherScreen extends ConsumerWidget {
  final City city;

  const WeatherScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(weatherScreenControllerProvider(city));

    return asyncData.when(
      data: (data) => Text(data),
      error: (error, stack) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
