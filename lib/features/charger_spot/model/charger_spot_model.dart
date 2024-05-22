import 'package:freezed_annotation/freezed_annotation.dart';

part 'charger_spot_model.freezed.dart';

@freezed
class ChargerSpotModel with _$ChargerSpotModel {
  factory ChargerSpotModel(
      {required String uuid,
      required String name,
      required double latitude,
      required double longitude,
      required int chargerDeviceCount,
      required String power,
      required String todayServiceTime,
      required bool nowAvailable,
      required String regularClosingDays,
      @Default([]) List<String> images}) = _ChargerSpotModel;
}
