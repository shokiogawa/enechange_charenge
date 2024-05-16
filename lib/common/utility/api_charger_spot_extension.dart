
import 'package:flutter_map_app/common/utility/charger_spot_service_time_day_extension.dart';
import 'package:openapi/api.dart';

extension ApiChargerSpotExtension on APIChargerSpot {
  String getDisplayPower(){
    return chargerDevices.isNotEmpty
        ? double.parse(chargerDevices[0].power).toStringAsFixed(1)
        : "0.0";
  }

  String getDisplayTodayServiceTime(){
    final targetData = chargerSpotServiceTimes;
    final todayServiceTime = targetData.where((element) => element.today).firstOrNull;
    final displayTodayServiceTime = (todayServiceTime?.startTime != null ||
        todayServiceTime?.endTime != null)
        ? "${todayServiceTime?.startTime} - ${todayServiceTime?.endTime}"
        : '-';
    return displayTodayServiceTime;
  }

  String getDisplayRegularClosingDays(){
    final targetData = chargerSpotServiceTimes;
    final holidayListString = targetData
        .where((element) => (element.businessDay ==
        APIChargerSpotServiceTimeBusinessDayEnum.no &&
        (element.day != APIChargerSpotServiceTimeDayEnum.weekday &&
            element.day != APIChargerSpotServiceTimeDayEnum.holiday)))
        .map((e) => e.day.getJapaneseName())
        .toList()
        .join("、");
    return holidayListString.isEmpty ? "-" : holidayListString;
  }
}