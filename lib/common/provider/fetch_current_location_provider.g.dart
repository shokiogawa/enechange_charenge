// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_current_location_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCurrentLocationHash() =>
    r'3623cfc897d52a5676d34f9eb3cd8b42f8e32dde';

/// See also [fetchCurrentLocation].
@ProviderFor(fetchCurrentLocation)
final fetchCurrentLocationProvider =
    AutoDisposeFutureProvider<LocationModel>.internal(
  fetchCurrentLocation,
  name: r'fetchCurrentLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchCurrentLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchCurrentLocationRef = AutoDisposeFutureProviderRef<LocationModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
