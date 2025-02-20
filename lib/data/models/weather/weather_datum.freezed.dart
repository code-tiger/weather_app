// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherDatum {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get generationtimeMs => throw _privateConstructorUsedError;
  int get utcOffsetSeconds => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get timezoneAbbreviation => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  WeatherProperties? get currentWeather => throw _privateConstructorUsedError;
  WeatherPropertiesHourly? get hourlyWeather =>
      throw _privateConstructorUsedError;
  WeatherPropertiesDaily? get dailyWeather =>
      throw _privateConstructorUsedError;
  WeatherUnits get weatherUnits => throw _privateConstructorUsedError;

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherDatumCopyWith<WeatherDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDatumCopyWith<$Res> {
  factory $WeatherDatumCopyWith(
          WeatherDatum value, $Res Function(WeatherDatum) then) =
      _$WeatherDatumCopyWithImpl<$Res, WeatherDatum>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double generationtimeMs,
      int utcOffsetSeconds,
      String timezone,
      String timezoneAbbreviation,
      double elevation,
      WeatherProperties? currentWeather,
      WeatherPropertiesHourly? hourlyWeather,
      WeatherPropertiesDaily? dailyWeather,
      WeatherUnits weatherUnits});

  $WeatherPropertiesCopyWith<$Res>? get currentWeather;
  $WeatherPropertiesHourlyCopyWith<$Res>? get hourlyWeather;
  $WeatherPropertiesDailyCopyWith<$Res>? get dailyWeather;
  $WeatherUnitsCopyWith<$Res> get weatherUnits;
}

/// @nodoc
class _$WeatherDatumCopyWithImpl<$Res, $Val extends WeatherDatum>
    implements $WeatherDatumCopyWith<$Res> {
  _$WeatherDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentWeather = freezed,
    Object? hourlyWeather = freezed,
    Object? dailyWeather = freezed,
    Object? weatherUnits = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherProperties?,
      hourlyWeather: freezed == hourlyWeather
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as WeatherPropertiesHourly?,
      dailyWeather: freezed == dailyWeather
          ? _value.dailyWeather
          : dailyWeather // ignore: cast_nullable_to_non_nullable
              as WeatherPropertiesDaily?,
      weatherUnits: null == weatherUnits
          ? _value.weatherUnits
          : weatherUnits // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
    ) as $Val);
  }

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPropertiesCopyWith<$Res>? get currentWeather {
    if (_value.currentWeather == null) {
      return null;
    }

    return $WeatherPropertiesCopyWith<$Res>(_value.currentWeather!, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPropertiesHourlyCopyWith<$Res>? get hourlyWeather {
    if (_value.hourlyWeather == null) {
      return null;
    }

    return $WeatherPropertiesHourlyCopyWith<$Res>(_value.hourlyWeather!,
        (value) {
      return _then(_value.copyWith(hourlyWeather: value) as $Val);
    });
  }

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPropertiesDailyCopyWith<$Res>? get dailyWeather {
    if (_value.dailyWeather == null) {
      return null;
    }

    return $WeatherPropertiesDailyCopyWith<$Res>(_value.dailyWeather!, (value) {
      return _then(_value.copyWith(dailyWeather: value) as $Val);
    });
  }

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherUnitsCopyWith<$Res> get weatherUnits {
    return $WeatherUnitsCopyWith<$Res>(_value.weatherUnits, (value) {
      return _then(_value.copyWith(weatherUnits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherDatumImplCopyWith<$Res>
    implements $WeatherDatumCopyWith<$Res> {
  factory _$$WeatherDatumImplCopyWith(
          _$WeatherDatumImpl value, $Res Function(_$WeatherDatumImpl) then) =
      __$$WeatherDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double generationtimeMs,
      int utcOffsetSeconds,
      String timezone,
      String timezoneAbbreviation,
      double elevation,
      WeatherProperties? currentWeather,
      WeatherPropertiesHourly? hourlyWeather,
      WeatherPropertiesDaily? dailyWeather,
      WeatherUnits weatherUnits});

  @override
  $WeatherPropertiesCopyWith<$Res>? get currentWeather;
  @override
  $WeatherPropertiesHourlyCopyWith<$Res>? get hourlyWeather;
  @override
  $WeatherPropertiesDailyCopyWith<$Res>? get dailyWeather;
  @override
  $WeatherUnitsCopyWith<$Res> get weatherUnits;
}

/// @nodoc
class __$$WeatherDatumImplCopyWithImpl<$Res>
    extends _$WeatherDatumCopyWithImpl<$Res, _$WeatherDatumImpl>
    implements _$$WeatherDatumImplCopyWith<$Res> {
  __$$WeatherDatumImplCopyWithImpl(
      _$WeatherDatumImpl _value, $Res Function(_$WeatherDatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentWeather = freezed,
    Object? hourlyWeather = freezed,
    Object? dailyWeather = freezed,
    Object? weatherUnits = null,
  }) {
    return _then(_$WeatherDatumImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherProperties?,
      hourlyWeather: freezed == hourlyWeather
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as WeatherPropertiesHourly?,
      dailyWeather: freezed == dailyWeather
          ? _value.dailyWeather
          : dailyWeather // ignore: cast_nullable_to_non_nullable
              as WeatherPropertiesDaily?,
      weatherUnits: null == weatherUnits
          ? _value.weatherUnits
          : weatherUnits // ignore: cast_nullable_to_non_nullable
              as WeatherUnits,
    ));
  }
}

/// @nodoc

class _$WeatherDatumImpl implements _WeatherDatum {
  _$WeatherDatumImpl(
      {required this.latitude,
      required this.longitude,
      required this.generationtimeMs,
      required this.utcOffsetSeconds,
      required this.timezone,
      required this.timezoneAbbreviation,
      required this.elevation,
      this.currentWeather,
      this.hourlyWeather,
      this.dailyWeather,
      this.weatherUnits = const WeatherUnits()});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double generationtimeMs;
  @override
  final int utcOffsetSeconds;
  @override
  final String timezone;
  @override
  final String timezoneAbbreviation;
  @override
  final double elevation;
  @override
  final WeatherProperties? currentWeather;
  @override
  final WeatherPropertiesHourly? hourlyWeather;
  @override
  final WeatherPropertiesDaily? dailyWeather;
  @override
  @JsonKey()
  final WeatherUnits weatherUnits;

  @override
  String toString() {
    return 'WeatherDatum(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentWeather: $currentWeather, hourlyWeather: $hourlyWeather, dailyWeather: $dailyWeather, weatherUnits: $weatherUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDatumImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.hourlyWeather, hourlyWeather) ||
                other.hourlyWeather == hourlyWeather) &&
            (identical(other.dailyWeather, dailyWeather) ||
                other.dailyWeather == dailyWeather) &&
            (identical(other.weatherUnits, weatherUnits) ||
                other.weatherUnits == weatherUnits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentWeather,
      hourlyWeather,
      dailyWeather,
      weatherUnits);

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDatumImplCopyWith<_$WeatherDatumImpl> get copyWith =>
      __$$WeatherDatumImplCopyWithImpl<_$WeatherDatumImpl>(this, _$identity);
}

abstract class _WeatherDatum implements WeatherDatum {
  factory _WeatherDatum(
      {required final double latitude,
      required final double longitude,
      required final double generationtimeMs,
      required final int utcOffsetSeconds,
      required final String timezone,
      required final String timezoneAbbreviation,
      required final double elevation,
      final WeatherProperties? currentWeather,
      final WeatherPropertiesHourly? hourlyWeather,
      final WeatherPropertiesDaily? dailyWeather,
      final WeatherUnits weatherUnits}) = _$WeatherDatumImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get generationtimeMs;
  @override
  int get utcOffsetSeconds;
  @override
  String get timezone;
  @override
  String get timezoneAbbreviation;
  @override
  double get elevation;
  @override
  WeatherProperties? get currentWeather;
  @override
  WeatherPropertiesHourly? get hourlyWeather;
  @override
  WeatherPropertiesDaily? get dailyWeather;
  @override
  WeatherUnits get weatherUnits;

  /// Create a copy of WeatherDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherDatumImplCopyWith<_$WeatherDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
