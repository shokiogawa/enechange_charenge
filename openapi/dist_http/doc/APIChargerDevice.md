# openapi.model.APIChargerDevice

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | 充電器の名称 | 
**code** | **String** | 充電器番号 | 
**makerCode** | **String** | メーカーコード | 
**productCode** | **String** | 製品コード | 
**serialNumber** | **String** | シリアル番号 | 
**serviceStartTime** | **String** | サービス開始時刻 | [optional] 
**serviceEndTime** | **String** | サービス終了時刻 | [optional] 
**allowCurrent** | **String** | 充電許容電流 | [optional] 
**maxChargeTime** | **String** | 最大充電時間 | [optional] 
**latitude** | **num** | 緯度 | 
**longitude** | **num** | 経度 | 
**displayStatus** | **String** | 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど） | 
**power** | **String** | 充電電力（3.2, 4.8, 6のどれかで6が基本。今後増える可能性あり） | 
**fee** | **String** | 充電料金（有料, 条件付き無料, 無料, 不明） | 
**lastUpdated** | **String** | 最終更新タイミング | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


