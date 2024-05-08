# openapi.model.APIChargerSpot

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | 充電スポットを一意に識別するためのuuid | 
**name** | **String** | 充電スポットの名称 | 
**latitude** | **num** | 充電スポットの緯度 | 
**longitude** | **num** | 充電スポットの経度 | 
**source_** | **String** | 充電スポット情報のソース | 
**note** | **String** | 備考 | [optional] 
**directions** | **List<String>** | 道順（fields指定がない場合は返却される） | [optional] [default to const []]
**markerLabel** | **String** | マップのマーカーのラベル。 | [optional] 
**images** | [**List<APIChargerSpotImage>**](APIChargerSpotImage.md) | 充電スポットの写真URL（fields指定がない場合は返却される） | [optional] [default to const []]
**serviceTimeNote** | **String** |  | [optional] 
**nowAvailable** | **String** | 現在営業中かどうか（fields指定がない場合は返却される） | [optional] 
**groupedTotalUnitPricesThisMonthNextMonth** | [**List<APIGroupedTotalUnitPricesThisMonthNextMonth>**](APIGroupedTotalUnitPricesThisMonthNextMonth.md) | 同じ充電出力、単価でグルーピングされた単価。 | [optional] [default to const []]
**groupedTotalUnitPricesThisMonthNextMonthByUser** | [**List<APIGroupedTotalUnitPricesThisMonthNextMonthByUser>**](APIGroupedTotalUnitPricesThisMonthNextMonthByUser.md) | プロモコードを登録したユーザーに応じて、同じ充電出力、単価でグルーピングされた単価（プロモコードを登録すると充電単価が変わるケースがある）。 | [optional] [default to const []]
**chargerSpotServiceTimes** | [**List<APIChargerSpotServiceTime>**](APIChargerSpotServiceTime.md) | サービス提供時間（データが存在しない場合は空配列、fields指定がない場合は返却される） | [optional] [default to const []]
**chargerDevices** | [**List<APIChargerDevice>**](APIChargerDevice.md) | 充電器情報 | [optional] [default to const []]
**gogoevChargerDevices** | [**List<APIGogoevChargerDevice>**](APIGogoevChargerDevice.md) | Gogoevの充電器情報（Gogoevの充電器のみ、fields指定がない場合は返却される） | [optional] [default to const []]
**address** | **String** | 住所（Gogoevの充電器のみ） | [optional] 
**facilityType** | **String** | 施設種別（Gogoevの充電器のみ） | [optional] 
**phoneNumber** | **String** | 電話番号（Gogoevの充電器のみ） | [optional] 
**parkingFee** | **String** | 駐車料金 | [optional] 
**advanceContact** | **String** | 事前連絡（Gogoevの充電器のみ） | [optional] 
**gogoevNotes** | **List<String>** | 備考（Gogoevの充電器のみ） | [optional] [default to const []]
**maintenanceNote** | **List<String>** | 休止情報に関する備考 | [optional] [default to const []]
**maintenanceStatus** | **String** | メンテナンス状態 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


