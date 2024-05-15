import 'dart:async';
import 'package:flutter_map_app/features/location/provider/check_current_location_settings_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/const/location.dart';
import '../model/location_model.dart';

part 'fetch_current_location_provider.g.dart';

// 現在位置を取得する
// 未許可の場合は、東京駅の場所を表示
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
