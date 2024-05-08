//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIChargerSpotServiceTime {
  /// Returns a new [APIChargerSpotServiceTime] instance.
  APIChargerSpotServiceTime({
    required this.businessDay,
    required this.day,
    this.startTime,
    this.endTime,
    required this.today,
  });

  /// yes: 営業日, no: 定休日, unknown: 不明
  APIChargerSpotServiceTimeBusinessDayEnum businessDay;

  /// 曜日
  APIChargerSpotServiceTimeDayEnum day;

  /// 開始時刻
  String? startTime;

  /// 終了時刻
  String? endTime;

  /// リクエストタイミングにおいてその曜日かどうか
  bool today;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIChargerSpotServiceTime &&
    other.businessDay == businessDay &&
    other.day == day &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.today == today;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (businessDay.hashCode) +
    (day.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (today.hashCode);

  @override
  String toString() => 'APIChargerSpotServiceTime[businessDay=$businessDay, day=$day, startTime=$startTime, endTime=$endTime, today=$today]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'business_day'] = this.businessDay;
      json[r'day'] = this.day;
    if (this.startTime != null) {
      json[r'start_time'] = this.startTime;
    } else {
      json[r'start_time'] = null;
    }
    if (this.endTime != null) {
      json[r'end_time'] = this.endTime;
    } else {
      json[r'end_time'] = null;
    }
      json[r'today'] = this.today;
    return json;
  }

  /// Returns a new [APIChargerSpotServiceTime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIChargerSpotServiceTime? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIChargerSpotServiceTime[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIChargerSpotServiceTime[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIChargerSpotServiceTime(
        businessDay: APIChargerSpotServiceTimeBusinessDayEnum.fromJson(json[r'business_day'])!,
        day: APIChargerSpotServiceTimeDayEnum.fromJson(json[r'day'])!,
        startTime: mapValueOfType<String>(json, r'start_time'),
        endTime: mapValueOfType<String>(json, r'end_time'),
        today: mapValueOfType<bool>(json, r'today')!,
      );
    }
    return null;
  }

  static List<APIChargerSpotServiceTime> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotServiceTime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotServiceTime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIChargerSpotServiceTime> mapFromJson(dynamic json) {
    final map = <String, APIChargerSpotServiceTime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIChargerSpotServiceTime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIChargerSpotServiceTime-objects as value to a dart map
  static Map<String, List<APIChargerSpotServiceTime>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIChargerSpotServiceTime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIChargerSpotServiceTime.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'business_day',
    'day',
    'today',
  };
}

/// yes: 営業日, no: 定休日, unknown: 不明
class APIChargerSpotServiceTimeBusinessDayEnum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerSpotServiceTimeBusinessDayEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const yes = APIChargerSpotServiceTimeBusinessDayEnum._(r'yes');
  static const no = APIChargerSpotServiceTimeBusinessDayEnum._(r'no');
  static const unknown = APIChargerSpotServiceTimeBusinessDayEnum._(r'unknown');

  /// List of all possible values in this [enum][APIChargerSpotServiceTimeBusinessDayEnum].
  static const values = <APIChargerSpotServiceTimeBusinessDayEnum>[
    yes,
    no,
    unknown,
  ];

  static APIChargerSpotServiceTimeBusinessDayEnum? fromJson(dynamic value) => APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer().decode(value);

  static List<APIChargerSpotServiceTimeBusinessDayEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotServiceTimeBusinessDayEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotServiceTimeBusinessDayEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerSpotServiceTimeBusinessDayEnum] to String,
/// and [decode] dynamic data back to [APIChargerSpotServiceTimeBusinessDayEnum].
class APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer {
  factory APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer() => _instance ??= const APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer._();

  const APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer._();

  String encode(APIChargerSpotServiceTimeBusinessDayEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerSpotServiceTimeBusinessDayEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerSpotServiceTimeBusinessDayEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'yes': return APIChargerSpotServiceTimeBusinessDayEnum.yes;
        case r'no': return APIChargerSpotServiceTimeBusinessDayEnum.no;
        case r'unknown': return APIChargerSpotServiceTimeBusinessDayEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer] instance.
  static APIChargerSpotServiceTimeBusinessDayEnumTypeTransformer? _instance;
}


/// 曜日
class APIChargerSpotServiceTimeDayEnum {
  /// Instantiate a new enum with the provided [value].
  const APIChargerSpotServiceTimeDayEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sunday = APIChargerSpotServiceTimeDayEnum._(r'Sunday');
  static const monday = APIChargerSpotServiceTimeDayEnum._(r'Monday');
  static const tuesday = APIChargerSpotServiceTimeDayEnum._(r'Tuesday');
  static const wednesday = APIChargerSpotServiceTimeDayEnum._(r'Wednesday');
  static const thursday = APIChargerSpotServiceTimeDayEnum._(r'Thursday');
  static const friday = APIChargerSpotServiceTimeDayEnum._(r'Friday');
  static const saturday = APIChargerSpotServiceTimeDayEnum._(r'Saturday');
  static const holiday = APIChargerSpotServiceTimeDayEnum._(r'Holiday');
  static const weekday = APIChargerSpotServiceTimeDayEnum._(r'Weekday');

  /// List of all possible values in this [enum][APIChargerSpotServiceTimeDayEnum].
  static const values = <APIChargerSpotServiceTimeDayEnum>[
    sunday,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    holiday,
    weekday,
  ];

  static APIChargerSpotServiceTimeDayEnum? fromJson(dynamic value) => APIChargerSpotServiceTimeDayEnumTypeTransformer().decode(value);

  static List<APIChargerSpotServiceTimeDayEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotServiceTimeDayEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotServiceTimeDayEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIChargerSpotServiceTimeDayEnum] to String,
/// and [decode] dynamic data back to [APIChargerSpotServiceTimeDayEnum].
class APIChargerSpotServiceTimeDayEnumTypeTransformer {
  factory APIChargerSpotServiceTimeDayEnumTypeTransformer() => _instance ??= const APIChargerSpotServiceTimeDayEnumTypeTransformer._();

  const APIChargerSpotServiceTimeDayEnumTypeTransformer._();

  String encode(APIChargerSpotServiceTimeDayEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIChargerSpotServiceTimeDayEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIChargerSpotServiceTimeDayEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Sunday': return APIChargerSpotServiceTimeDayEnum.sunday;
        case r'Monday': return APIChargerSpotServiceTimeDayEnum.monday;
        case r'Tuesday': return APIChargerSpotServiceTimeDayEnum.tuesday;
        case r'Wednesday': return APIChargerSpotServiceTimeDayEnum.wednesday;
        case r'Thursday': return APIChargerSpotServiceTimeDayEnum.thursday;
        case r'Friday': return APIChargerSpotServiceTimeDayEnum.friday;
        case r'Saturday': return APIChargerSpotServiceTimeDayEnum.saturday;
        case r'Holiday': return APIChargerSpotServiceTimeDayEnum.holiday;
        case r'Weekday': return APIChargerSpotServiceTimeDayEnum.weekday;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIChargerSpotServiceTimeDayEnumTypeTransformer] instance.
  static APIChargerSpotServiceTimeDayEnumTypeTransformer? _instance;
}


