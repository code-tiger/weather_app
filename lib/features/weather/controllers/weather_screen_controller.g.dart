// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherScreenControllerHash() =>
    r'5838be9879e519880824ff6dc5d2949f6b6a3658';

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

abstract class _$WeatherScreenController
    extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final City city;

  FutureOr<String> build(
    City city,
  );
}

/// See also [WeatherScreenController].
@ProviderFor(WeatherScreenController)
const weatherScreenControllerProvider = WeatherScreenControllerFamily();

/// See also [WeatherScreenController].
class WeatherScreenControllerFamily extends Family<AsyncValue<String>> {
  /// See also [WeatherScreenController].
  const WeatherScreenControllerFamily();

  /// See also [WeatherScreenController].
  WeatherScreenControllerProvider call(
    City city,
  ) {
    return WeatherScreenControllerProvider(
      city,
    );
  }

  @override
  WeatherScreenControllerProvider getProviderOverride(
    covariant WeatherScreenControllerProvider provider,
  ) {
    return call(
      provider.city,
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
  String? get name => r'weatherScreenControllerProvider';
}

/// See also [WeatherScreenController].
class WeatherScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WeatherScreenController,
        String> {
  /// See also [WeatherScreenController].
  WeatherScreenControllerProvider(
    City city,
  ) : this._internal(
          () => WeatherScreenController()..city = city,
          from: weatherScreenControllerProvider,
          name: r'weatherScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherScreenControllerHash,
          dependencies: WeatherScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              WeatherScreenControllerFamily._allTransitiveDependencies,
          city: city,
        );

  WeatherScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.city,
  }) : super.internal();

  final City city;

  @override
  FutureOr<String> runNotifierBuild(
    covariant WeatherScreenController notifier,
  ) {
    return notifier.build(
      city,
    );
  }

  @override
  Override overrideWith(WeatherScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherScreenControllerProvider._internal(
        () => create()..city = city,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        city: city,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WeatherScreenController, String>
      createElement() {
    return _WeatherScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherScreenControllerProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WeatherScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<String> {
  /// The parameter `city` of this provider.
  City get city;
}

class _WeatherScreenControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WeatherScreenController,
        String> with WeatherScreenControllerRef {
  _WeatherScreenControllerProviderElement(super.provider);

  @override
  City get city => (origin as WeatherScreenControllerProvider).city;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
