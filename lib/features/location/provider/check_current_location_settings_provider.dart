import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/const/location.dart';
import '../model/location_model.dart';

part 'check_current_location_settings_provider.g.dart';

// 現在位置設定のステータス
sealed class CurrentLocationSettingStatus {
  const CurrentLocationSettingStatus();
}

// 位置情報取得不可
class ServiceDisable extends CurrentLocationSettingStatus {
  const ServiceDisable() : super();
}

class PermissionDenied extends CurrentLocationSettingStatus {
  const PermissionDenied() : super();
}

class PermissionDeniedForever extends CurrentLocationSettingStatus {
  const PermissionDeniedForever() : super();
}

class Enable extends CurrentLocationSettingStatus {
  const Enable() : super();
}

// 現在位置を取得する
// 未許可の場合は、東京駅の場所を表示
@riverpod
Future<CurrentLocationSettingStatus> checkCurrentLocationSettings(
    CheckCurrentLocationSettingsRef ref) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  // 位置情報サービス使用不可の場合は例外を吐く。
  if (!serviceEnabled) {
    // throw Exception("location service is disable");
    return const ServiceDisable();
  }

  // パーミッションの確認
  var permission = await Geolocator.checkPermission();
  // 未許可の場合は、許可を促す。
  if (permission == LocationPermission.denied) {
    // パーミッションを促す
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // 許可を促しても、未許可の場合は、東京駅の場所を返す。
      return const PermissionDenied();
    }
  }
  // 永久未許可設定の場合東京駅の場所を返す。
  if (permission == LocationPermission.deniedForever) {
    return const PermissionDenied();
  }

  return const Enable();
}
