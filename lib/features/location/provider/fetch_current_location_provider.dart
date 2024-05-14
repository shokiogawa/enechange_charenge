import 'dart:async';
import 'package:flutter_map_app/const/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/current_location_model.dart';

part 'fetch_current_location_provider.g.dart';

// 現在位置設定のステータス
sealed class CurrentLocationSettingStatus {
  const CurrentLocationSettingStatus();
}

// 位置情報取得不可
class ServiceDisable extends CurrentLocationSettingStatus {
  const ServiceDisable() : super();
}

class ServiceAble extends CurrentLocationSettingStatus {
  const ServiceAble() : super();
}

// TODO: sealed classに置き換え
enum LocationSettingResult {
  serviceDisabled,
  permissionDenied,
  permissionDeniedForever,
  enabled,
}

// 現在位置を取得する
// 未許可の場合は、東京駅の場所を表示
@riverpod
Future<CurrentLocationModel> fetchCurrentLocation(
    FetchCurrentLocationRef ref) async {
  final tokyoPosition = CurrentLocationModel(
      latitude: LocationConstant.tokyoStationLatitude,
      longitude: LocationConstant.tokyoStationLongitude);
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  // 位置情報サービス使用不可の場合は例外を吐く。
  if (!serviceEnabled) {
    throw Exception("location service is disable");
  }

  // パーミッションの確認
  var permission = await Geolocator.checkPermission();
  // 未許可の場合は、許可を促す。
  if (permission == LocationPermission.denied) {
    // パーミッションを促す
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // 許可を促しても、未許可の場合は、東京駅の場所を返す。
      return tokyoPosition;
    }
  }
  // 永久未許可設定の場合東京駅の場所を返す。
  if (permission == LocationPermission.deniedForever) {
    return tokyoPosition;
  }

  // 許可されている場合は、現在の値を返す。
  final currentPosition = await Geolocator.getCurrentPosition();
  return CurrentLocationModel(
      latitude: currentPosition.latitude, longitude: currentPosition.longitude);
}
