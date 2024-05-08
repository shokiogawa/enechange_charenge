# openapi.model.APIGroupedTotalUnitPricesThisMonthNextMonth

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chargerDeviceCodes** | **List<String>** |  | [optional] [default to const []]
**power** | **String** | 充電出力 | [optional] 
**monthPrices** | [**List<APIMonthPrice>**](APIMonthPrice.md) | 最初の60分は無料といった単価設定に対応するため、配列で出力。 | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


