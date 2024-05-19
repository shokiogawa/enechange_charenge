import 'dart:async';
import 'package:flutter_map_app/common/provider/check_current_location_settings_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../const/location.dart';

part 'fetch_current_location_provider.freezed.dart';
part 'fetch_current_location_provider.g.dart';

@freezed
class LocationModel with _$LocationModel{
  factory LocationModel({
    @Default(0) double latitude,
    @Default(0) double longitude
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

// 現在位置を取得する
@riverpod
Future<LocationModel> fetchCurrentLocation(FetchCurrentLocationRef ref) async {
  final checkLocationSettings =
      await ref.watch(checkCurrentLocationSettingsProvider.future);

  switch (checkLocationSettings) {
    // 許可されている場合は、現在の場所を表示
    case Enable():
      final currentPosition = await Geolocator.getCurrentPosition();
      return LocationModel(
          latitude: currentPosition.latitude,
          longitude: currentPosition.longitude);
    // 許可されていない場合は、東京駅をデフォルトで表示
    default:
      return LocationModel(
          latitude: LocationConstant.tokyoStationLatitude,
          longitude: LocationConstant.tokyoStationLongitude);
  }
}
