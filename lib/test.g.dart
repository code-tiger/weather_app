// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherStationDataHash() =>
    r'0579ad2aed2ceb9166da0327c8297aeaa1ed15a5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [weatherStationData].
@ProviderFor(weatherStationData)
const weatherStationDataProvider = WeatherStationDataFamily();

/// See also [weatherStationData].
class WeatherStationDataFamily extends Family<AsyncValue<String>> {
  /// See also [weatherStationData].
  const WeatherStationDataFamily();

  /// See also [weatherStationData].
  WeatherStationDataProvider call(
    List<String> stationIDs,
  ) {
    return WeatherStationDataProvider(
      stationIDs,
    );
  }

  @override
  WeatherStationDataProvider getProviderOverride(
    covariant WeatherStationDataProvider provider,
  ) {
    return call(
      provider.stationIDs,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weatherStationDataProvider';
}

/// See also [weatherStationData].
class WeatherStationDataProvider extends AutoDisposeFutureProvider<String> {
  /// See also [weatherStationData].
  WeatherStationDataProvider(
    List<String> stationIDs,
  ) : this._internal(
          (ref) => weatherStationData(
            ref as WeatherStationDataRef,
            stationIDs,
          ),
          from: weatherStationDataProvider,
          name: r'weatherStationDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherStationDataHash,
          dependencies: WeatherStationDataFamily._dependencies,
          allTransitiveDependencies:
              WeatherStationDataFamily._allTransitiveDependencies,
          stationIDs: stationIDs,
        );

  WeatherStationDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stationIDs,
  }) : super.internal();

  final List<String> stationIDs;

  @override
  Override overrideWith(
    FutureOr<String> Function(WeatherStationDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeatherStationDataProvider._internal(
        (ref) => create(ref as WeatherStationDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stationIDs: stationIDs,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _WeatherStationDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherStationDataProvider &&
        other.stationIDs == stationIDs;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stationIDs.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WeatherStationDataRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `stationIDs` of this provider.
  List<String> get stationIDs;
}

class _WeatherStationDataProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with WeatherStationDataRef {
  _WeatherStationDataProviderElement(super.provider);

  @override
  List<String> get stationIDs =>
      (origin as WeatherStationDataProvider).stationIDs;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
