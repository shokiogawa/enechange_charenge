//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIChargerSpot {
  /// Returns a new [APIChargerSpot] instance.
  APIChargerSpot({
    required this.uuid,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.source_,
    this.note,
    this.directions = const [],
    this.markerLabel,
    this.images = const [],
    this.serviceTimeNote,
    this.nowAvailable,
    this.groupedTotalUnitPricesThisMonthNextMonth = const [],
    this.groupedTotalUnitPricesThisMonthNextMonthByUser = const [],
    this.chargerSpotServiceTimes = const [],
    this.chargerDevices = const [],
    this.gogoevChargerDevices = const [],
    this.address,
    this.facilityType,
    this.phoneNumber,
    this.parkingFee,
    this.advanceContact,
    this.gogoevNotes = const [],
    this.maintenanceNote = const [],
    this.maintenanceStatus,
  });

  /// 充電スポットを一意に識別するためのuuid
  String uuid;

  /// 充電スポットの名称
  String name;

  /// 充電スポットの緯度
  num latitude;

  /// 充電スポットの経度
  num longitude;

  /// 充電スポット情報のソース
  APIChargerSpotSource_Enum source_;

  /// 備考
  String? note;

  /// 道順（fields指定がない場合は返却される）
  List<String> directions;

  /// マップのマーカーのラベル。
  APIChargerSpotMarkerLabelEnum? markerLabel;

  /// 充電スポットの写真URL（fields指定がない場合は返却される）
  List<APIChargerSpotImage> images;

  String? serviceTimeNote;

  /// 現在営業中かどうか（fields指定がない場合は返却される）
  APIChargerSpotNowAvailableEnum? nowAvailable;

  /// 同じ充電出力、単価でグルーピングされた単価。
  List<APIGroupedTotalUnitPricesThisMonthNextMonth> groupedTotalUnitPricesThisMonthNextMonth;

  /// プロモコードを登録したユーザーに応じて、同じ充電出力、単価でグルーピングされた単価（プロモコードを登録すると充電単価が変わるケースがある）。
  List<APIGroupedTotalUnitPricesThisMonthNextMonthByUser> groupedTotalUnitPricesThisMonthNextMonthByUser;

  /// サービス提供時間（データが存在しない場合は空配列、fields指定がない場合は返却される）
  List<APIChargerSpotServiceTime> chargerSpotServiceTimes;

  /// 充電器情報
  List<APIChargerDevice> chargerDevices;

  /// Gogoevの充電器情報（Gogoevの充電器のみ、fields指定がない場合は返却される）
  List<APIGogoevChargerDevice> gogoevChargerDevices;

  /// 住所（Gogoevの充電器のみ）
  String? address;

  /// 施設種別（Gogoevの充電器のみ）
  String? facilityType;

  /// 電話番号（Gogoevの充電器のみ）
  String? phoneNumber;

  /// 駐車料金
  String? parkingFee;

  /// 事前連絡（Gogoevの充電器のみ）
  String? advanceContact;

  /// 備考（Gogoevの充電器のみ）
  List<String> gogoevNotes;

  /// 休止情報に関する備考
  List<String?> maintenanceNote;

  /// メンテナンス状態
  APIChargerSpotMaintenanceStatusEnum? maintenanceStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIChargerSpot &&
    other.uuid == uuid &&
    other.name == name &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.source_ == source_ &&
    other.note == note &&
    _deepEquality.equals(other.directions, directions) &&
    other.markerLabel == markerLabel &&
    _deepEquality.equals(other.images, images) &&
    other.serviceTimeNote == serviceTimeNote &&
    other.nowAvailable == nowAvailable &&
    _deepEquality.equals(other.groupedTotalUnitPricesThisMonthNextMonth, groupedTotalUnitPricesThisMonthNextMonth) &&
    _deepEquality.equals(other.groupedTotalUnitPricesThisMonthNextMonthByUser, groupedTotalUnitPricesThisMonthNextMonthByUser) &&
    _deepEquality.equals(other.chargerSpotServiceTimes, chargerSpotServiceTimes) &&
    _deepEquality.equals(other.chargerDevices, chargerDevices) &&
    _deepEquality.equals(other.gogoevChargerDevices, gogoevChargerDevices) &&
    other.address == address &&
    other.facilityType == facilityType &&
    other.phoneNumber == phoneNumber &&
    other.parkingFee == parkingFee &&
    other.advanceContact == advanceContact &&
    _deepEquality.equals(other.gogoevNotes, gogoevNotes) &&
    _deepEquality.equals(other.maintenanceNote, maintenanceNote) &&
    other.maintenanceStatus == maintenanceStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid.hashCode) +
    (name.hashCode) +
    (latitude.hashCode) +
    (longitude.hashCode) +
    (source_.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (directions.hashCode) +
    (markerLabel == null ? 0 : markerLabel!.hashCode) +
    (images.hashCode) +
    (serviceTimeNote == null ? 0 : serviceTimeNote!.hashCode) +
    (nowAvailable == null ? 0 : nowAvailable!.hashCode) +
    (groupedTotalUnitPricesThisMonthNextMonth.hashCode) +
    (groupedTotalUnitPricesThisMonthNextMonthByUser.hashCode) +
    (chargerSpotServiceTimes.hashCode) +
    (chargerDevices.hashCode) +
    (gogoevChargerDevices.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (facilityType == null ? 0 : facilityType!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (parkingFee == null ? 0 : parkingFee!.hashCode) +
    (advanceContact == null ? 0 : advanceContact!.hashCode) +
    (gogoevNotes.hashCode) +
    (maintenanceNote.hashCode) +
    (maintenanceStatus == null ? 0 : maintenanceStatus!.hashCode);

  @override
  String toString() => 'APIChargerSpot[uuid=$uuid, name=$name, latitude=$latitude, longitude=$longitude, source_=$source_, note=$note, directions=$directions, markerLabel=$markerLabel, images=$images, serviceTimeNote=$serviceTimeNote, nowAvailable=$nowAvailable, groupedTotalUnitPricesThisMonthNextMonth=$groupedTotalUnitPricesThisMonthNextMonth, groupedTotalUnitPricesThisMonthNextMonthByUser=$groupedTotalUnitPricesThisMonthNextMonthByUser, chargerSpotServiceTimes=$chargerSpotServiceTimes, chargerDevices=$chargerDevices, gogoevChargerDevices=$gogoevChargerDevices, address=$address, facilityType=$facilityType, phoneNumber=$phoneNumber, parkingFee=$parkingFee, advanceContact=$advanceContact, gogoevNotes=$gogoevNotes, maintenanceNote=$maintenanceNote, maintenanceStatus=$maintenanceStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uuid'] = this.uuid;
      json[r'name'] = this.name;
      json[r'latitude'] = this.latitude;
      json[r'longitude'] = this.longitude;
      json[r'source'] = this.source_;
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
      json[r'directions'] = this.directions;
    if (this.markerLabel != null) {
      json[r'marker_label'] = this.markerLabel;
    } else {
      json[r'marker_label'] = null;
    }
      json[r'images'] = this.images;
    if (this.serviceTimeNote != null) {
      json[r'service_time_note'] = this.serviceTimeNote;
    } else {
      json[r'service_time_note'] = null;
    }
    if (this.nowAvailable != null) {
      json[r'now_available'] = this.nowAvailable;
    } else {
      json[r'now_available'] = null;
    }
      json[r'grouped_total_unit_prices_this_month_next_month'] = this.groupedTotalUnitPricesThisMonthNextMonth;
      json[r'grouped_total_unit_prices_this_month_next_month_by_user'] = this.groupedTotalUnitPricesThisMonthNextMonthByUser;
      json[r'charger_spot_service_times'] = this.chargerSpotServiceTimes;
      json[r'charger_devices'] = this.chargerDevices;
      json[r'gogoev_charger_devices'] = this.gogoevChargerDevices;
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.facilityType != null) {
      json[r'facility_type'] = this.facilityType;
    } else {
      json[r'facility_type'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phone_number'] = this.phoneNumber;
    } else {
      json[r'phone_number'] = null;
    }
    if (this.parkingFee != null) {
      json[r'parking_fee'] = this.parkingFee;
    } else {
      json[r'parking_fee'] = null;
    }
    if (this.advanceContact != null) {
      json[r'advance_contact'] = this.advanceContact;
    } else {
      json[r'advance_contact'] = null;
    }
      json[r'gogoev_notes'] = this.gogoevNotes;
      json[r'maintenance_note'] = this.maintenanceNote;
    if (this.maintenanceStatus != null) {
      json[r'maintenance_status'] = this.maintenanceStatus;
    } else {
      json[r'maintenance_status'] = null;
    }
    return json;
  }

  /// Returns a new [APIChargerSpot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIChargerSpot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIChargerSpot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIChargerSpot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIChargerSpot(
        uuid: mapValueOfType<String>(json, r'uuid')!,
        name: mapValueOfType<String>(json, r'name')!,
        latitude: num.parse('${json[r'latitude']}'),
        longitude: num.parse('${json[r'longitude']}'),
        source_: APIChargerSpotSource_Enum.fromJson(json[r'source'])!,
        note: mapValueOfType<String>(json, r'note'),
        directions: json[r'directions'] is Iterable
            ? (json[r'directions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        markerLabel: APIChargerSpotMarkerLabelEnum.fromJson(json[r'marker_label']),
        images: APIChargerSpotImage.listFromJson(json[r'images']),
        serviceTimeNote: mapValueOfType<String>(json, r'service_time_note'),
        nowAvailable: APIChargerSpotNowAvailableEnum.fromJson(json[r'now_available']),
        groupedTotalUnitPricesThisMonthNextMonth: APIGroupedTotalUnitPricesThisMonthNextMonth.listFromJson(json[r'grouped_total_unit_prices_this_month_next_month']),
        groupedTotalUnitPricesThisMonthNextMonthByUser: APIGroupedTotalUnitPricesThisMonthNextMonthByUser.listFromJson(json[r'grouped_total_unit_prices_this_month_next_month_by_user']),
        chargerSpotServiceTimes: APIChargerSpotServiceTime.listFromJson(json[r'charger_spot_service_times']),
        chargerDevices: APIChargerDevice.listFromJson(json[r'charger_devices']),
        gogoevChargerDevices: APIGogoevChargerDevice.listFromJson(json[r'gogoev_charger_devices']),
        address: mapValueOfType<String>(json, r'address'),
        facilityType: mapValueOfType<String>(json, r'facility_type'),
        phoneNumber: mapValueOfType<String>(json, r'phone_number'),
        parkingFee: mapValueOfType<String>(json, r'parking_fee'),
        advanceContact: mapValueOfType<String>(json, r'advance_contact'),
        gogoevNotes: json[r'gogoev_notes'] is Iterable
            ? (json[r'gogoev_notes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        maintenanceNote: json[r'maintenance_note'] is Iterable
            ? (json[r'maintenance_note'] as Iterable).cast<String?>().toList(growable: false)
            : const [],
        maintenanceStatus: APIChargerSpotMaintenanceStatusEnum.fromJson(json[r'maintenance_status']),
      );
    }
    return null;
  }

  static List<APIChargerSpot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIChargerSpot> mapFromJson(dynamic json) {
    final map = <String, APIChargerSpot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIChargerSpot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIChargerSpot-objects as value to a dart map
  static Map<String, List<APIChargerSpot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIChargerSpot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIChargerSpot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uuid',
    'name',
    'latitude',
    'longitude',
    'source',
  };
}

/// 充電スポット情報のソース
class APIChargerSpotSource_Enum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerSpotSource_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const enechange = APIChargerSpotSource_Enum._(r'enechange');
  static const gogoev = APIChargerSpotSource_Enum._(r'gogoev');

  /// List of all possible values in this [enum][APIChargerSpotSource_Enum].
  static const values = <APIChargerSpotSource_Enum>[
    enechange,
    gogoev,
  ];

  static APIChargerSpotSource_Enum? fromJson(dynamic value) => APIChargerSpotSource_EnumTypeTransformer().decode(value);

  static List<APIChargerSpotSource_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotSource_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotSource_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerSpotSource_Enum] to String,
/// and [decode] dynamic data back to [APIChargerSpotSource_Enum].
class APIChargerSpotSource_EnumTypeTransformer {
  factory APIChargerSpotSource_EnumTypeTransformer() => _instance ??= const APIChargerSpotSource_EnumTypeTransformer._();

  const APIChargerSpotSource_EnumTypeTransformer._();

  String encode(APIChargerSpotSource_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerSpotSource_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerSpotSource_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'enechange': return APIChargerSpotSource_Enum.enechange;
        case r'gogoev': return APIChargerSpotSource_Enum.gogoev;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerSpotSource_EnumTypeTransformer] instance.
  static APIChargerSpotSource_EnumTypeTransformer? _instance;
}


/// マップのマーカーのラベル。
class APIChargerSpotMarkerLabelEnum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerSpotMarkerLabelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const enechange = APIChargerSpotMarkerLabelEnum._(r'enechange');
  static const chademo = APIChargerSpotMarkerLabelEnum._(r'chademo');
  static const tesla = APIChargerSpotMarkerLabelEnum._(r'tesla');
  static const chademoTesla = APIChargerSpotMarkerLabelEnum._(r'chademo-tesla');
  static const normal = APIChargerSpotMarkerLabelEnum._(r'normal');

  /// List of all possible values in this [enum][APIChargerSpotMarkerLabelEnum].
  static const values = <APIChargerSpotMarkerLabelEnum>[
    enechange,
    chademo,
    tesla,
    chademoTesla,
    normal,
  ];

  static APIChargerSpotMarkerLabelEnum? fromJson(dynamic value) => APIChargerSpotMarkerLabelEnumTypeTransformer().decode(value);

  static List<APIChargerSpotMarkerLabelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotMarkerLabelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotMarkerLabelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerSpotMarkerLabelEnum] to String,
/// and [decode] dynamic data back to [APIChargerSpotMarkerLabelEnum].
class APIChargerSpotMarkerLabelEnumTypeTransformer {
  factory APIChargerSpotMarkerLabelEnumTypeTransformer() => _instance ??= const APIChargerSpotMarkerLabelEnumTypeTransformer._();

  const APIChargerSpotMarkerLabelEnumTypeTransformer._();

  String encode(APIChargerSpotMarkerLabelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerSpotMarkerLabelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerSpotMarkerLabelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'enechange': return APIChargerSpotMarkerLabelEnum.enechange;
        case r'chademo': return APIChargerSpotMarkerLabelEnum.chademo;
        case r'tesla': return APIChargerSpotMarkerLabelEnum.tesla;
        case r'chademo-tesla': return APIChargerSpotMarkerLabelEnum.chademoTesla;
        case r'normal': return APIChargerSpotMarkerLabelEnum.normal;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerSpotMarkerLabelEnumTypeTransformer] instance.
  static APIChargerSpotMarkerLabelEnumTypeTransformer? _instance;
}


/// 現在営業中かどうか（fields指定がない場合は返却される）
class APIChargerSpotNowAvailableEnum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerSpotNowAvailableEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const yes = APIChargerSpotNowAvailableEnum._(r'yes');
  static const no = APIChargerSpotNowAvailableEnum._(r'no');
  static const unknown = APIChargerSpotNowAvailableEnum._(r'unknown');

  /// List of all possible values in this [enum][APIChargerSpotNowAvailableEnum].
  static const values = <APIChargerSpotNowAvailableEnum>[
    yes,
    no,
    unknown,
  ];

  static APIChargerSpotNowAvailableEnum? fromJson(dynamic value) => APIChargerSpotNowAvailableEnumTypeTransformer().decode(value);

  static List<APIChargerSpotNowAvailableEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotNowAvailableEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotNowAvailableEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerSpotNowAvailableEnum] to String,
/// and [decode] dynamic data back to [APIChargerSpotNowAvailableEnum].
class APIChargerSpotNowAvailableEnumTypeTransformer {
  factory APIChargerSpotNowAvailableEnumTypeTransformer() => _instance ??= const APIChargerSpotNowAvailableEnumTypeTransformer._();

  const APIChargerSpotNowAvailableEnumTypeTransformer._();

  String encode(APIChargerSpotNowAvailableEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerSpotNowAvailableEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerSpotNowAvailableEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'yes': return APIChargerSpotNowAvailableEnum.yes;
        case r'no': return APIChargerSpotNowAvailableEnum.no;
        case r'unknown': return APIChargerSpotNowAvailableEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerSpotNowAvailableEnumTypeTransformer] instance.
  static APIChargerSpotNowAvailableEnumTypeTransformer? _instance;
}


/// メンテナンス状態
class APIChargerSpotMaintenanceStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerSpotMaintenanceStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const normal = APIChargerSpotMaintenanceStatusEnum._(r'normal');
  static const notice = APIChargerSpotMaintenanceStatusEnum._(r'notice');
  static const outOfOrder = APIChargerSpotMaintenanceStatusEnum._(r'out_of_order');
  static const onBreak = APIChargerSpotMaintenanceStatusEnum._(r'on_break');

  /// List of all possible values in this [enum][APIChargerSpotMaintenanceStatusEnum].
  static const values = <APIChargerSpotMaintenanceStatusEnum>[
    normal,
    notice,
    outOfOrder,
    onBreak,
  ];

  static APIChargerSpotMaintenanceStatusEnum? fromJson(dynamic value) => APIChargerSpotMaintenanceStatusEnumTypeTransformer().decode(value);

  static List<APIChargerSpotMaintenanceStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotMaintenanceStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotMaintenanceStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerSpotMaintenanceStatusEnum] to String,
/// and [decode] dynamic data back to [APIChargerSpotMaintenanceStatusEnum].
class APIChargerSpotMaintenanceStatusEnumTypeTransformer {
  factory APIChargerSpotMaintenanceStatusEnumTypeTransformer() => _instance ??= const APIChargerSpotMaintenanceStatusEnumTypeTransformer._();

  const APIChargerSpotMaintenanceStatusEnumTypeTransformer._();

  String encode(APIChargerSpotMaintenanceStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerSpotMaintenanceStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerSpotMaintenanceStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'normal': return APIChargerSpotMaintenanceStatusEnum.normal;
        case r'notice': return APIChargerSpotMaintenanceStatusEnum.notice;
        case r'out_of_order': return APIChargerSpotMaintenanceStatusEnum.outOfOrder;
        case r'on_break': return APIChargerSpotMaintenanceStatusEnum.onBreak;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerSpotMaintenanceStatusEnumTypeTransformer] instance.
  static APIChargerSpotMaintenanceStatusEnumTypeTransformer? _instance;
}


