# openapi.model.APIPrice

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**price** | **String** |  | 
**price3kw** | **String** |  | [optional] 
**unitMinutes** | **String** | 課金の単位時間（unit_valueに移管するので使わない） | 
**minuteFrom** | **num** |  | 
**minuteTo** | **num** |  | [optional] 
**unitType** | **String** | 単価が時間課金かkWh課金か | 
**unitValue** | **String** | 課金の単位の数値（unit_typeがminuteでunit_valueが10なら10分あたり） | 
**kwhFrom** | **num** |  | [optional] 
**kwhTo** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


