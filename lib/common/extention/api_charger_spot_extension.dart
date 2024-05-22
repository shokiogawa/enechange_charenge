import 'package:flutter_map_app/common/extention/charger_spot_service_time_day_extension.dart';
import 'package:openapi/api.dart';

extension ApiChargerSpotExtension on APIChargerSpot {
  // データが存在しない場合の変数
  static const String notExistDataText = "-";

  // 表示用充電器の出力取得
  String get displayPower {
    // 充電器が存在しない場合は、- を返す。
    if (chargerDevices.isEmpty) return notExistDataText;

    // 重複を除外
    final powerList = chargerDevices.map((e) => e.power).toSet().toList();

    // 単位付きデータ取得
    final powerWithUnitList = powerList
        .map((e) => "${double.parse(e).toStringAsFixed(1)}kw")
        .toList();

    // 表示様にデータ加工
    final display = powerWithUnitList.join("、");
    return display;
  }

  // 表示用、今日のサービス提供時間
  String get displayTodayServiceTime {
    // サービス提供時間が存在しない場合は - を返す。
    if (chargerSpotServiceTimes.isEmpty) return notExistDataText;

    // 今日のサービス提供時間を取得する。
    final todayServiceTime =
        chargerSpotServiceTimes.where((element) => element.today).firstOrNull;

    // データがそれぞれ存在しない場合は、-　を返す。
    if (todayServiceTime?.startTime == null ||
        todayServiceTime?.endTime == null) return notExistDataText;

    // 開始時間、終了時間をそれぞれ取得し、「MM:MM - MM:MM」のフォーマットで返す。
    final display =
        "${todayServiceTime?.startTime} - ${todayServiceTime?.endTime}";
    return display;
  }

  // 表示用 定休日取得
  String get displayRegularClosingDays {
    // サービス提供時間が存在しない場合は - を返す。
    if (chargerSpotServiceTimes.isEmpty) return "-";

    // 祝日を取得
    final holidayList = chargerSpotServiceTimes.where(
        (e) => e.businessDay == APIChargerSpotServiceTimeBusinessDayEnum.no);

    if (holidayList.isEmpty) return "-";

    // 表示用データを日本語表記で、「土曜日、日曜日」のように取得する。
    final display =
        holidayList.map((e) => e.day.japaneseName).toList().join("、");
    return display;
  }
}
