//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for APIChargerSpot
void main() {
  // final instance = APIChargerSpot();

  group('test APIChargerSpot', () {
    // 充電スポットを一意に識別するためのuuid
    // String uuid
    test('to test the property `uuid`', () async {
      // TODO
    });

    // 充電スポットの名称
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // 充電スポットの緯度
    // num latitude
    test('to test the property `latitude`', () async {
      // TODO
    });

    // 充電スポットの経度
    // num longitude
    test('to test the property `longitude`', () async {
      // TODO
    });

    // 充電スポット情報のソース
    // String source_
    test('to test the property `source_`', () async {
      // TODO
    });

    // 備考
    // String note
    test('to test the property `note`', () async {
      // TODO
    });

    // 道順（fields指定がない場合は返却される）
    // List<String> directions (default value: const [])
    test('to test the property `directions`', () async {
      // TODO
    });

    // マップのマーカーのラベル。
    // String markerLabel
    test('to test the property `markerLabel`', () async {
      // TODO
    });

    // 充電スポットの写真URL（fields指定がない場合は返却される）
    // List<APIChargerSpotImage> images (default value: const [])
    test('to test the property `images`', () async {
      // TODO
    });

    // String serviceTimeNote
    test('to test the property `serviceTimeNote`', () async {
      // TODO
    });

    // 現在営業中かどうか（fields指定がない場合は返却される）
    // String nowAvailable
    test('to test the property `nowAvailable`', () async {
      // TODO
    });

    // 同じ充電出力、単価でグルーピングされた単価。
    // List<APIGroupedTotalUnitPricesThisMonthNextMonth> groupedTotalUnitPricesThisMonthNextMonth (default value: const [])
    test('to test the property `groupedTotalUnitPricesThisMonthNextMonth`', () async {
      // TODO
    });

    // プロモコードを登録したユーザーに応じて、同じ充電出力、単価でグルーピングされた単価（プロモコードを登録すると充電単価が変わるケースがある）。
    // List<APIGroupedTotalUnitPricesThisMonthNextMonthByUser> groupedTotalUnitPricesThisMonthNextMonthByUser (default value: const [])
    test('to test the property `groupedTotalUnitPricesThisMonthNextMonthByUser`', () async {
      // TODO
    });

    // サービス提供時間（データが存在しない場合は空配列、fields指定がない場合は返却される）
    // List<APIChargerSpotServiceTime> chargerSpotServiceTimes (default value: const [])
    test('to test the property `chargerSpotServiceTimes`', () async {
      // TODO
    });

    // 充電器情報
    // List<APIChargerDevice> chargerDevices (default value: const [])
    test('to test the property `chargerDevices`', () async {
      // TODO
    });

    // Gogoevの充電器情報（Gogoevの充電器のみ、fields指定がない場合は返却される）
    // List<APIGogoevChargerDevice> gogoevChargerDevices (default value: const [])
    test('to test the property `gogoevChargerDevices`', () async {
      // TODO
    });

    // 住所（Gogoevの充電器のみ）
    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // 施設種別（Gogoevの充電器のみ）
    // String facilityType
    test('to test the property `facilityType`', () async {
      // TODO
    });

    // 電話番号（Gogoevの充電器のみ）
    // String phoneNumber
    test('to test the property `phoneNumber`', () async {
      // TODO
    });

    // 駐車料金
    // String parkingFee
    test('to test the property `parkingFee`', () async {
      // TODO
    });

    // 事前連絡（Gogoevの充電器のみ）
    // String advanceContact
    test('to test the property `advanceContact`', () async {
      // TODO
    });

    // 備考（Gogoevの充電器のみ）
    // List<String> gogoevNotes (default value: const [])
    test('to test the property `gogoevNotes`', () async {
      // TODO
    });

    // 休止情報に関する備考
    // List<String> maintenanceNote (default value: const [])
    test('to test the property `maintenanceNote`', () async {
      // TODO
    });

    // メンテナンス状態
    // String maintenanceStatus
    test('to test the property `maintenanceStatus`', () async {
      // TODO
    });


  });

}
