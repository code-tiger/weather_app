import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/theme/app_theme.dart';
import 'test.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: const WeatherScreen(stationIDs: ['10865', 'G005']),
    );
  }
}

class WeatherScreen extends ConsumerWidget {
  final List<String> stationIDs;

  const WeatherScreen({super.key, required this.stationIDs});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> weatherData =
        ref.watch(weatherStationDataProvider(stationIDs));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Data'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: weatherData.when(
            data: (data) => Text(data),
            error: (error, stackTrace) => Text('Error: $error'),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
