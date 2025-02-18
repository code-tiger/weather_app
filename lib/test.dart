import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test.g.dart';

@riverpod
Future<String> weatherStationData(Ref ref, List<String> stationIDs) async {
  final dio = Dio();
  try {
    final response = await dio.get(
      'https://app-prod-ws.warnwetter.de/v30/stationOverviewExtended',
      queryParameters: {'stationIds': stationIDs},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load weather data: ${response.statusMessage}');
    }

    final json = response.data as Map;

    return json.toString();
  } catch (e) {
    throw Exception('Failed to load weather data: $e');
  }
}
