# openapi.api.ChargerSpotsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://stg.evene.jp*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chargerSpots**](ChargerSpotsApi.md#chargerspots) | **GET** /api/charger_spots | 充電スポットと充電スポットに紐づく充電器を返します。緯度経度（４つ）、uuidまたはtextのいずれかが必須。


# **chargerSpots**
> APIResponse chargerSpots(X_EVENE_NATIVE_API_TOKEN, userUuid, swLat, swLng, neLat, neLng, uuid, text, fields, deviceTypes, feeTypes, nowAvailable, styles, gogoevAuthenticationNetworks, categories, open24Hours, advanceContacts, parkingFeeTypes)

充電スポットと充電スポットに紐づく充電器を返します。緯度経度（４つ）、uuidまたはtextのいずれかが必須。

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = ChargerSpotsApi();
final X_EVENE_NATIVE_API_TOKEN = t7fJDbFKJzGNbavV; // String | 認証トークン
final userUuid = a3ee472d-a143-49af-9161-4e588eaefba0; // String | ユーザのuuid
final swLat = 35.683331703634124; // String | 検索したいエリアの最南西（左下）の緯度
final swLng = 139.7657155055581; // String | 検索したいエリアの最南西（左下）の経度
final neLat = 35.686849507072736; // String | 検索したいエリアの最北東（右上）の緯度
final neLng = 139.77340835691592; // String | 検索したいエリアの最北東（右上）の経度
final uuid = uuid_example; // String | 検索したい充電スポットのuuid。カンマ区切りで連結して複数スポットを取得可能
final text = text_example; // String | 検索したい充電スポットの名称（部分一致で検索）
final fields = note,directions,marker_label,service_time_note; // String | デフォルトはすべての属性を返却、絞り込みたい場合はfieldsに属性名（note, directions, marker_label, images, service_time_note, now_available, grouped_total_unit_prices_this_month_next_month, grouped_total_unit_prices_this_month_next_month_by_user, charger_spot_service_times, charger_devices, gogoev_charger_devices, address, facility_type, phone_number, parking_fee, advance_contact, gogoev_notes, maintenance_note, maintenance_status）をカンマ区切りで連結
final deviceTypes = chademo,200v; // String | 充電種別（chademo: CHAdeMO, 100v: 100V, 200v: 200V, tesla: TESLA）カンマ区切りで連結
final feeTypes = free; // String | 充電料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
final nowAvailable = true; // String | 現在利用可能か（true: 利用可能, true以外：不明、利用不可）
final styles = high_40_50,extra_high_over_50; // String | 充電出力（slow: 低速 20kW未満, medium: 中速 20-40kW未満, high: 高速 40-90kW未満, extra_high: 90kW以上, pole_with_cable: ポール型ケーブル付き, pole_outlet: ポール型コンセント, outlet_with_cable: コンセントにケーブル後付け, outlet_only: コンセントのみ, super_charger: スーパーチャージャー, except_super_charger: スーパーチャージャー以外）カンマ区切りで連結
final gogoevAuthenticationNetworks = zesp2_zesp3,eco_qden; // String | 認証ネットワーク（none: なし, zesp2_zesp3: 日産 ZESP2 / ZESP3, zesp_lite: 日産 ZESP ライト, mitsubishi: 三菱自動車 電動車両サポート, eco_qden: エネゲート エコQ電, jtb_regular: JTB おでかけCard レギュラー, jtb_premiere: JTB おでかけCard プレミア, evss: EVSSネットワーク, toyota_phv_drive_support: トヨタ PHV DriveSupport, toyota_phv_drive_support_plus: トヨタ PHV DriveSupport Plus, toyota_phv_support: トヨタ PHV充電サポート, toyota_g_station: トヨタ G-Station, waon: イオン WAON, times_park_and_charge: タイムズ パーク＆チャージ会員, emp_fast_ordinary: eMP 急速・普通併用, emp_fast: eMP 急速充電器用, emp_ordinary: eMP 普通充電器用, bmw_charge_now_fast_ordinary: BMW ChargeNow 急速・普通併用, bmw_charge_now_ordinary: BMW ChargeNow 普通充電器用, eneos_charge_plus: ENEOS ChargePlus, nanaco: nanaco認証, enechange: ENECHANGE, other: その他）カンマ区切りで連結
final categories = nissan,coin_parking; // String | 施設種別（mitsubishi: 三菱ディーラー, nissan: 日産ディーラー, toyota: トヨタディーラー, mercedes: メルセデスディーラー, bmw: BMWディーラー, vw: VWディーラー, honda: HONDAディーラー, station_airport: 駅・空港, roadside_station: 道の駅, sa: サービスエリア, public_facility: 公共施設, hotel: 宿泊施設・温浴施設, shopping_mall: ショッピングモール・小売店, convenience_store: コンビニ, leisure_facility: レジャー・スポーツ施設, coin_parking: コインパーキング, car_factory: 自動車工場, restaurant: レストラン, gas_station: ガソリンスタンド, electrical_contractor: 電気工事業者, other: その他）カンマ区切りで連結
final open24Hours = true; // String | 24時間営業か（true: 24時間営業, true以外：24時間営業ではない）
final advanceContacts = necessary; // String | 事前連絡（necessary: 必要, unnecessary: 不要, unknown: 不明）カンマ区切りで連結
final parkingFeeTypes = pay; // String | 駐車料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結

try {
    final result = api_instance.chargerSpots(X_EVENE_NATIVE_API_TOKEN, userUuid, swLat, swLng, neLat, neLng, uuid, text, fields, deviceTypes, feeTypes, nowAvailable, styles, gogoevAuthenticationNetworks, categories, open24Hours, advanceContacts, parkingFeeTypes);
    print(result);
} catch (e) {
    print('Exception when calling ChargerSpotsApi->chargerSpots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **X_EVENE_NATIVE_API_TOKEN** | **String**| 認証トークン | 
 **userUuid** | **String**| ユーザのuuid | [optional] 
 **swLat** | **String**| 検索したいエリアの最南西（左下）の緯度 | [optional] 
 **swLng** | **String**| 検索したいエリアの最南西（左下）の経度 | [optional] 
 **neLat** | **String**| 検索したいエリアの最北東（右上）の緯度 | [optional] 
 **neLng** | **String**| 検索したいエリアの最北東（右上）の経度 | [optional] 
 **uuid** | **String**| 検索したい充電スポットのuuid。カンマ区切りで連結して複数スポットを取得可能 | [optional] 
 **text** | **String**| 検索したい充電スポットの名称（部分一致で検索） | [optional] 
 **fields** | **String**| デフォルトはすべての属性を返却、絞り込みたい場合はfieldsに属性名（note, directions, marker_label, images, service_time_note, now_available, grouped_total_unit_prices_this_month_next_month, grouped_total_unit_prices_this_month_next_month_by_user, charger_spot_service_times, charger_devices, gogoev_charger_devices, address, facility_type, phone_number, parking_fee, advance_contact, gogoev_notes, maintenance_note, maintenance_status）をカンマ区切りで連結 | [optional] 
 **deviceTypes** | **String**| 充電種別（chademo: CHAdeMO, 100v: 100V, 200v: 200V, tesla: TESLA）カンマ区切りで連結 | [optional] 
 **feeTypes** | **String**| 充電料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結 | [optional] 
 **nowAvailable** | **String**| 現在利用可能か（true: 利用可能, true以外：不明、利用不可） | [optional] 
 **styles** | **String**| 充電出力（slow: 低速 20kW未満, medium: 中速 20-40kW未満, high: 高速 40-90kW未満, extra_high: 90kW以上, pole_with_cable: ポール型ケーブル付き, pole_outlet: ポール型コンセント, outlet_with_cable: コンセントにケーブル後付け, outlet_only: コンセントのみ, super_charger: スーパーチャージャー, except_super_charger: スーパーチャージャー以外）カンマ区切りで連結 | [optional] 
 **gogoevAuthenticationNetworks** | **String**| 認証ネットワーク（none: なし, zesp2_zesp3: 日産 ZESP2 / ZESP3, zesp_lite: 日産 ZESP ライト, mitsubishi: 三菱自動車 電動車両サポート, eco_qden: エネゲート エコQ電, jtb_regular: JTB おでかけCard レギュラー, jtb_premiere: JTB おでかけCard プレミア, evss: EVSSネットワーク, toyota_phv_drive_support: トヨタ PHV DriveSupport, toyota_phv_drive_support_plus: トヨタ PHV DriveSupport Plus, toyota_phv_support: トヨタ PHV充電サポート, toyota_g_station: トヨタ G-Station, waon: イオン WAON, times_park_and_charge: タイムズ パーク＆チャージ会員, emp_fast_ordinary: eMP 急速・普通併用, emp_fast: eMP 急速充電器用, emp_ordinary: eMP 普通充電器用, bmw_charge_now_fast_ordinary: BMW ChargeNow 急速・普通併用, bmw_charge_now_ordinary: BMW ChargeNow 普通充電器用, eneos_charge_plus: ENEOS ChargePlus, nanaco: nanaco認証, enechange: ENECHANGE, other: その他）カンマ区切りで連結 | [optional] 
 **categories** | **String**| 施設種別（mitsubishi: 三菱ディーラー, nissan: 日産ディーラー, toyota: トヨタディーラー, mercedes: メルセデスディーラー, bmw: BMWディーラー, vw: VWディーラー, honda: HONDAディーラー, station_airport: 駅・空港, roadside_station: 道の駅, sa: サービスエリア, public_facility: 公共施設, hotel: 宿泊施設・温浴施設, shopping_mall: ショッピングモール・小売店, convenience_store: コンビニ, leisure_facility: レジャー・スポーツ施設, coin_parking: コインパーキング, car_factory: 自動車工場, restaurant: レストラン, gas_station: ガソリンスタンド, electrical_contractor: 電気工事業者, other: その他）カンマ区切りで連結 | [optional] 
 **open24Hours** | **String**| 24時間営業か（true: 24時間営業, true以外：24時間営業ではない） | [optional] 
 **advanceContacts** | **String**| 事前連絡（necessary: 必要, unnecessary: 不要, unknown: 不明）カンマ区切りで連結 | [optional] 
 **parkingFeeTypes** | **String**| 駐車料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結 | [optional] 

### Return type

[**APIResponse**](APIResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

