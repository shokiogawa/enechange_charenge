// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentLocationModel _$CurrentLocationModelFromJson(Map<String, dynamic> json) {
  return _CurrentLocationModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentLocationModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentLocationModelCopyWith<CurrentLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentLocationModelCopyWith<$Res> {
  factory $CurrentLocationModelCopyWith(CurrentLocationModel value,
          $Res Function(CurrentLocationModel) then) =
      _$CurrentLocationModelCopyWithImpl<$Res, CurrentLocationModel>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CurrentLocationModelCopyWithImpl<$Res,
        $Val extends CurrentLocationModel>
    implements $CurrentLocationModelCopyWith<$Res> {
  _$CurrentLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentLocationModelImplCopyWith<$Res>
    implements $CurrentLocationModelCopyWith<$Res> {
  factory _$$CurrentLocationModelImplCopyWith(_$CurrentLocationModelImpl value,
          $Res Function(_$CurrentLocationModelImpl) then) =
      __$$CurrentLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$CurrentLocationModelImplCopyWithImpl<$Res>
    extends _$CurrentLocationModelCopyWithImpl<$Res, _$CurrentLocationModelImpl>
    implements _$$CurrentLocationModelImplCopyWith<$Res> {
  __$$CurrentLocationModelImplCopyWithImpl(_$CurrentLocationModelImpl _value,
      $Res Function(_$CurrentLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$CurrentLocationModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentLocationModelImpl implements _CurrentLocationModel {
  _$CurrentLocationModelImpl({this.latitude = 0, this.longitude = 0});

  factory _$CurrentLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentLocationModelImplFromJson(json);

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'CurrentLocationModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentLocationModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentLocationModelImplCopyWith<_$CurrentLocationModelImpl>
      get copyWith =>
          __$$CurrentLocationModelImplCopyWithImpl<_$CurrentLocationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentLocationModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentLocationModel implements CurrentLocationModel {
  factory _CurrentLocationModel(
      {final double latitude,
      final double longitude}) = _$CurrentLocationModelImpl;

  factory _CurrentLocationModel.fromJson(Map<String, dynamic> json) =
      _$CurrentLocationModelImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CurrentLocationModelImplCopyWith<_$CurrentLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
