import 'dart:async';
import 'package:flutter_map_app/common/extention/api_charger_spot_extension.dart';
import 'package:flutter_map_app/features/charger_spot/model/charger_spot_model.dart';
import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/provider/google_map_controller_provider.dart';
import '../repository/charger_spots_repository.dart';

part 'fetch_charger_spot_provider.g.dart';

// 充電スポット取得のステータスを表現
sealed class ChargerSpotDataStatus {
  const ChargerSpotDataStatus();
}

// 範囲が広すぎる時のエラー
class DistanceTooLarge extends ChargerSpotDataStatus {
  const DistanceTooLarge() : super();
}

// 緯度軽度が取得できなかった場合のエラー
class LatLngsIsBlank extends ChargerSpotDataStatus {
  const LatLngsIsBlank() : super();
}

// データが空の場合
class DataEmpty extends ChargerSpotDataStatus {
  const DataEmpty() : super();
}

// データ取得時
class DataExist extends ChargerSpotDataStatus {
  const DataExist(this.chargerList);

  final List<ChargerSpotModel> chargerList;
}

@riverpod
class FetchChargerSpotNotifier extends _$FetchChargerSpotNotifier {
  @override
  FutureOr<ChargerSpotDataStatus> build() async {
    // 現在の表示中の範囲を取得する
    final visibleRegionArea =
        await (await ref.watch(googleMapControllerProvider).future)
            .getVisibleRegion();
    return _future(
        swLat: visibleRegionArea.southwest.latitude.toString(),
        swLng: visibleRegionArea.southwest.longitude.toString(),
        neLat: visibleRegionArea.northeast.latitude.toString(),
        neLng: visibleRegionArea.northeast.longitude.toString());
  }

  Future<ChargerSpotDataStatus> _future({
    required String swLat,
    required String swLng,
    required String neLat,
    required String neLng,
  }) async {
    // 現在表示中の範囲を元に、充電器スポットを取得する。
    final response = await ref
        .watch(chargerSpotRepositoryProvider)
        .getChargerSpots(
            swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng);

    // 検索範囲が広すぎな場合
    if (response?.status == APIResponseStatusEnum.ngDistanceTooLong) {
      return const DistanceTooLarge();
    }

    // 緯度軽度がからの場合
    if (response?.status == APIResponseStatusEnum.ngLatlngsIsBlank) {
      return const LatLngsIsBlank();
    }

    // データが存在しない場合
    if (response?.chargerSpots == null || response!.chargerSpots.isEmpty) {
      return const DataEmpty();
    }

    // 正常処理の場合
    // builder内で計算しないように、provider内でデータ加工
    final data = response.chargerSpots.map((e) {
      return ChargerSpotModel(
          uuid: e.uuid,
          name: e.name,
          latitude: e.latitude as double,
          longitude: e.longitude as double,
          chargerDeviceCount: e.chargerDevices.length,
          power: e.displayPower,
          todayServiceTime: e.displayTodayServiceTime,
          nowAvailable: e.nowAvailable == APIChargerSpotNowAvailableEnum.yes,
          regularClosingDays: e.displayRegularClosingDays,
          images: e.images.map((e) => e.url).toList());
    }).toList();

    return DataExist(data);
  }

  // 単方向データフローにするため、UI側から軽度緯度を取得する。
  Future<void> searchChargerSpot({
    required String swLat,
    required String swLng,
    required String neLat,
    required String neLng,
  }) async {
    // ローディング表示をする
    state = const AsyncLoading<ChargerSpotDataStatus>();
    state = await AsyncValue.guard(() async {
      return await _future(
          swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng);
    });
  }
}
