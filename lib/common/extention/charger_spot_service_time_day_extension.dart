import 'package:openapi/api.dart';

extension APIChargerSpotServiceTimeDayEnumExtension
on APIChargerSpotServiceTimeDayEnum {
  // 曜日の日本語表記を取得するメソッドを追加する
  String get japaneseName {
    switch (this) {
      case APIChargerSpotServiceTimeDayEnum.monday:
        return '月曜日';
      case APIChargerSpotServiceTimeDayEnum.tuesday:
        return '火曜日';
      case APIChargerSpotServiceTimeDayEnum.wednesday:
        return '水曜日';
      case APIChargerSpotServiceTimeDayEnum.thursday:
        return '木曜日';
      case APIChargerSpotServiceTimeDayEnum.friday:
        return '金曜日';
      case APIChargerSpotServiceTimeDayEnum.saturday:
        return '土曜日';
      case APIChargerSpotServiceTimeDayEnum.sunday:
        return '日曜日';
      case APIChargerSpotServiceTimeDayEnum.holiday:
        return "祝日";
      case APIChargerSpotServiceTimeDayEnum.weekday:
        return "平日";
      default:
        return '';
    }
  }
}