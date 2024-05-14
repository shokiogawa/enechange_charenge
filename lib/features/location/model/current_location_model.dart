
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_location_model.freezed.dart';
part 'current_location_model.g.dart';

@freezed
class CurrentLocationModel with _$CurrentLocationModel{
  factory CurrentLocationModel({
    @Default(0) double latitude,
    @Default(0) double longitude
  }) = _CurrentLocationModel;

  factory CurrentLocationModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentLocationModelFromJson(json);
}