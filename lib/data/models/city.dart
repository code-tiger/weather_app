import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
class City with _$City {
  factory City({
    required String name,
    required String region,
    required double latitude,
    required double longitude,
  }) = _City;
}
