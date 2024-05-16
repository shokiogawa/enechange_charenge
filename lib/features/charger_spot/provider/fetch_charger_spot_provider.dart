import 'dart:async';
import 'package:flutter_map_app/common/extention/api_charger_spot_extension.dart';
import 'package:flutter_map_app/features/charger_spot/model/charger_spot_model.dart';
import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/provider/google_map_controller_provider.dart';
import '../repository/charger_spots_repository.dart';

part 'fetch_charger_spot_provider.g.dart';

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
class SuccessData extends ChargerSpotDataStatus {
  const SuccessData(this.chargerList);

  final List<ChargerSpotModel> chargerList;
}

@riverpod
class FetchChargerSpotNotifier extends _$FetchChargerSpotNotifier {
  @override
  FutureOr<ChargerSpotDataStatus> build() {
    return _future();
  }

  Future<ChargerSpotDataStatus> _future() async {
    // 現在の表示中の範囲を取得する
    final visibleRegionArea =
        await (await ref.watch(googleMapControllerProvider).future)
            .getVisibleRegion();

    // 現在表示中の範囲を元に、充電器スポットを取得する。
    final response = await ref
        .watch(chargerSpotRepositoryProvider)
        .getChargerSpots(
            swLat: visibleRegionArea.southwest.latitude.toString(),
            swLng: visibleRegionArea.southwest.longitude.toString(),
            neLat: visibleRegionArea.northeast.latitude.toString(),
            neLng: visibleRegionArea.northeast.longitude.toString());

    // 検索範囲が広すぎ場合
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
          power: e.getDisplayPower(),
          todayServiceTime: e.getDisplayTodayServiceTime(),
          nowAvailable: e.nowAvailable == APIChargerSpotNowAvailableEnum.yes,
          regularClosingDays: e.getDisplayRegularClosingDays(),
          images: e.images.map((e) => e.url).toList());
    }).toList();

    return SuccessData(data);
  }

  // 再検索
  // invalidateでもよいが、何を行なっているのかわかりやすくするためメソッドを作成
  Future<void> searchChargerSpot() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_future);
  }
}
