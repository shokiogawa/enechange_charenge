//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIChargerDevice {
  /// Returns a new [APIChargerDevice] instance.
  APIChargerDevice({
    required this.name,
    required this.code,
    required this.makerCode,
    required this.productCode,
    required this.serialNumber,
    this.serviceStartTime,
    this.serviceEndTime,
    this.allowCurrent,
    this.maxChargeTime,
    required this.latitude,
    required this.longitude,
    required this.displayStatus,
    required this.power,
    required this.fee,
    this.lastUpdated,
  });

  /// 充電器の名称
  String name;

  /// 充電器番号
  String code;

  /// メーカーコード
  String makerCode;

  /// 製品コード
  String productCode;

  /// シリアル番号
  String serialNumber;

  /// サービス開始時刻
  String? serviceStartTime;

  /// サービス終了時刻
  String? serviceEndTime;

  /// 充電許容電流
  String? allowCurrent;

  /// 最大充電時間
  String? maxChargeTime;

  /// 緯度
  num latitude;

  /// 経度
  num longitude;

  /// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
  APIChargerDeviceDisplayStatusEnum displayStatus;

  /// 充電電力（3.2, 4.8, 6のどれかで6が基本。今後増える可能性あり）
  String power;

  /// 充電料金（有料, 条件付き無料, 無料, 不明）
  String fee;

  /// 最終更新タイミング
  String? lastUpdated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIChargerDevice &&
    other.name == name &&
    other.code == code &&
    other.makerCode == makerCode &&
    other.productCode == productCode &&
    other.serialNumber == serialNumber &&
    other.serviceStartTime == serviceStartTime &&
    other.serviceEndTime == serviceEndTime &&
    other.allowCurrent == allowCurrent &&
    other.maxChargeTime == maxChargeTime &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.displayStatus == displayStatus &&
    other.power == power &&
    other.fee == fee &&
    other.lastUpdated == lastUpdated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (code.hashCode) +
    (makerCode.hashCode) +
    (productCode.hashCode) +
    (serialNumber.hashCode) +
    (serviceStartTime == null ? 0 : serviceStartTime!.hashCode) +
    (serviceEndTime == null ? 0 : serviceEndTime!.hashCode) +
    (allowCurrent == null ? 0 : allowCurrent!.hashCode) +
    (maxChargeTime == null ? 0 : maxChargeTime!.hashCode) +
    (latitude.hashCode) +
    (longitude.hashCode) +
    (displayStatus.hashCode) +
    (power.hashCode) +
    (fee.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode);

  @override
  String toString() => 'APIChargerDevice[name=$name, code=$code, makerCode=$makerCode, productCode=$productCode, serialNumber=$serialNumber, serviceStartTime=$serviceStartTime, serviceEndTime=$serviceEndTime, allowCurrent=$allowCurrent, maxChargeTime=$maxChargeTime, latitude=$latitude, longitude=$longitude, displayStatus=$displayStatus, power=$power, fee=$fee, lastUpdated=$lastUpdated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'code'] = this.code;
      json[r'maker_code'] = this.makerCode;
      json[r'product_code'] = this.productCode;
      json[r'serial_number'] = this.serialNumber;
    if (this.serviceStartTime != null) {
      json[r'service_start_time'] = this.serviceStartTime;
    } else {
      json[r'service_start_time'] = null;
    }
    if (this.serviceEndTime != null) {
      json[r'service_end_time'] = this.serviceEndTime;
    } else {
      json[r'service_end_time'] = null;
    }
    if (this.allowCurrent != null) {
      json[r'allow_current'] = this.allowCurrent;
    } else {
      json[r'allow_current'] = null;
    }
    if (this.maxChargeTime != null) {
      json[r'max_charge_time'] = this.maxChargeTime;
    } else {
      json[r'max_charge_time'] = null;
    }
      json[r'latitude'] = this.latitude;
      json[r'longitude'] = this.longitude;
      json[r'display_status'] = this.displayStatus;
      json[r'power'] = this.power;
      json[r'fee'] = this.fee;
    if (this.lastUpdated != null) {
      json[r'last_updated'] = this.lastUpdated;
    } else {
      json[r'last_updated'] = null;
    }
    return json;
  }

  /// Returns a new [APIChargerDevice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIChargerDevice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIChargerDevice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIChargerDevice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIChargerDevice(
        name: mapValueOfType<String>(json, r'name')!,
        code: mapValueOfType<String>(json, r'code')!,
        makerCode: mapValueOfType<String>(json, r'maker_code')!,
        productCode: mapValueOfType<String>(json, r'product_code')!,
        serialNumber: mapValueOfType<String>(json, r'serial_number')!,
        serviceStartTime: mapValueOfType<String>(json, r'service_start_time'),
        serviceEndTime: mapValueOfType<String>(json, r'service_end_time'),
        allowCurrent: mapValueOfType<String>(json, r'allow_current'),
        maxChargeTime: mapValueOfType<String>(json, r'max_charge_time'),
        latitude: num.parse('${json[r'latitude']}'),
        longitude: num.parse('${json[r'longitude']}'),
        displayStatus: APIChargerDeviceDisplayStatusEnum.fromJson(json[r'display_status'])!,
        power: mapValueOfType<String>(json, r'power')!,
        fee: mapValueOfType<String>(json, r'fee')!,
        lastUpdated: mapValueOfType<String>(json, r'last_updated'),
      );
    }
    return null;
  }

  static List<APIChargerDevice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerDevice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerDevice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIChargerDevice> mapFromJson(dynamic json) {
    final map = <String, APIChargerDevice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIChargerDevice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIChargerDevice-objects as value to a dart map
  static Map<String, List<APIChargerDevice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIChargerDevice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIChargerDevice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'code',
    'maker_code',
    'product_code',
    'serial_number',
    'latitude',
    'longitude',
    'display_status',
    'power',
    'fee',
  };
}

/// 表示用ステータス（unavailable_or_no_info: 利用不可または情報なし, in_use: 利用中, available: 利用可能, unable_to_obtain_info: 情報取得不可（gogoevなど）
class APIChargerDeviceDisplayStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerDeviceDisplayStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unavailableOrNoInfo = APIChargerDeviceDisplayStatusEnum._(r'unavailable_or_no_info');
  static const inUse = APIChargerDeviceDisplayStatusEnum._(r'in_use');
  static const available = APIChargerDeviceDisplayStatusEnum._(r'available');
  static const unableToObtainInfo = APIChargerDeviceDisplayStatusEnum._(r'unable_to_obtain_info');

  /// List of all possible values in this [enum][APIChargerDeviceDisplayStatusEnum].
  static const values = <APIChargerDeviceDisplayStatusEnum>[
    unavailableOrNoInfo,
    inUse,
    available,
    unableToObtainInfo,
  ];

  static APIChargerDeviceDisplayStatusEnum? fromJson(dynamic value) => APIChargerDeviceDisplayStatusEnumTypeTransformer().decode(value);

  static List<APIChargerDeviceDisplayStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerDeviceDisplayStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerDeviceDisplayStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerDeviceDisplayStatusEnum] to String,
/// and [decode] dynamic data back to [APIChargerDeviceDisplayStatusEnum].
class APIChargerDeviceDisplayStatusEnumTypeTransformer {
  factory APIChargerDeviceDisplayStatusEnumTypeTransformer() => _instance ??= const APIChargerDeviceDisplayStatusEnumTypeTransformer._();

  const APIChargerDeviceDisplayStatusEnumTypeTransformer._();

  String encode(APIChargerDeviceDisplayStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerDeviceDisplayStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerDeviceDisplayStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unavailable_or_no_info': return APIChargerDeviceDisplayStatusEnum.unavailableOrNoInfo;
        case r'in_use': return APIChargerDeviceDisplayStatusEnum.inUse;
        case r'available': return APIChargerDeviceDisplayStatusEnum.available;
        case r'unable_to_obtain_info': return APIChargerDeviceDisplayStatusEnum.unableToObtainInfo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerDeviceDisplayStatusEnumTypeTransformer] instance.
  static APIChargerDeviceDisplayStatusEnumTypeTransformer? _instance;
}


