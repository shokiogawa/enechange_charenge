// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentLocationModelImpl _$$CurrentLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentLocationModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CurrentLocationModelImplToJson(
        _$CurrentLocationModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
