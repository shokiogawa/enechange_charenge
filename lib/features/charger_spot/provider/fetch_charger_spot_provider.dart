import 'dart:async';
import 'package:flutter_map_app/common/utility/charger_spot_service_time_day_extension.dart';
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
  static const String defaultPower = "0.0";
  static const String defaultEmpty = "-";

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
          power: e.chargerDevices.isNotEmpty
              ? double.parse(e.chargerDevices[0].power).toStringAsFixed(1)
              : defaultPower,
          todayServiceTime:
              _getDisplayTodayServiceTime(e.chargerSpotServiceTimes),
          nowAvailable: e.nowAvailable == APIChargerSpotNowAvailableEnum.yes,
          regularClosingDays:
              _getDisplayRegularClosingDays(e.chargerSpotServiceTimes),
          images: e.images.map((e) => e.url).toList());
    }).toList();

    return SuccessData(data);
  }

  // TODO: 別Providerでデータ加工の方が良いかも
  // 今日の営業時間を取得する
  String _getDisplayTodayServiceTime(List<APIChargerSpotServiceTime> data) {
    // 今日の営業日を取得
    final todayServiceTime = data.where((element) => element.today).firstOrNull;
    final displayTodayServiceTime = (todayServiceTime?.startTime != null ||
            todayServiceTime?.endTime != null)
        ? "${todayServiceTime?.startTime} - ${todayServiceTime?.endTime}"
        : defaultEmpty;
    return displayTodayServiceTime;
  }

  // TODO: 別Providerでデータ加工の方が良いかも
  // 定休日の曜日を取得する。
  String _getDisplayRegularClosingDays(List<APIChargerSpotServiceTime> data) {
    final holidayListString = data
        .where((element) => (element.businessDay ==
                APIChargerSpotServiceTimeBusinessDayEnum.no &&
            (element.day != APIChargerSpotServiceTimeDayEnum.weekday &&
                element.day != APIChargerSpotServiceTimeDayEnum.holiday)))
        .map((e) => e.day.getJapaneseName())
        .toList()
        .join("、");
    return holidayListString.isEmpty ? defaultEmpty : holidayListString;
  }

  // 再検索
  // invalidateでもよいが、何を行なっているのかわかりやすくするためメソッドを作成
  Future<void> searchChargerSpot() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_future);
  }
}
