//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIResponse {
  /// Returns a new [APIResponse] instance.
  APIResponse({
    required this.status,
    this.chargerSpots = const [],
  });

  /// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
  APIResponseStatusEnum status;

  List<APIChargerSpot> chargerSpots;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIResponse &&
    other.status == status &&
    _deepEquality.equals(other.chargerSpots, chargerSpots);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (chargerSpots.hashCode);

  @override
  String toString() => 'APIResponse[status=$status, chargerSpots=$chargerSpots]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'charger_spots'] = this.chargerSpots;
    return json;
  }

  /// Returns a new [APIResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIResponse(
        status: APIResponseStatusEnum.fromJson(json[r'status'])!,
        chargerSpots: APIChargerSpot.listFromJson(json[r'charger_spots']),
      );
    }
    return null;
  }

  static List<APIResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIResponse> mapFromJson(dynamic json) {
    final map = <String, APIResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIResponse-objects as value to a dart map
  static Map<String, List<APIResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'charger_spots',
  };
}

/// ok, ng_latlngs_is_blank: 緯度軽度が空, ng_distance_too_long: 検索範囲が広すぎる
class APIResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const APIResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = APIResponseStatusEnum._(r'ok');
  static const ngLatlngsIsBlank = APIResponseStatusEnum._(r'ng_latlngs_is_blank');
  static const ngDistanceTooLong = APIResponseStatusEnum._(r'ng_distance_too_long');

  /// List of all possible values in this [enum][APIResponseStatusEnum].
  static const values = <APIResponseStatusEnum>[
    ok,
    ngLatlngsIsBlank,
    ngDistanceTooLong,
  ];

  static APIResponseStatusEnum? fromJson(dynamic value) => APIResponseStatusEnumTypeTransformer().decode(value);

  static List<APIResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIResponseStatusEnum] to String,
/// and [decode] dynamic data back to [APIResponseStatusEnum].
class APIResponseStatusEnumTypeTransformer {
  factory APIResponseStatusEnumTypeTransformer() => _instance ??= const APIResponseStatusEnumTypeTransformer._();

  const APIResponseStatusEnumTypeTransformer._();

  String encode(APIResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return APIResponseStatusEnum.ok;
        case r'ng_latlngs_is_blank': return APIResponseStatusEnum.ngLatlngsIsBlank;
        case r'ng_distance_too_long': return APIResponseStatusEnum.ngDistanceTooLong;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIResponseStatusEnumTypeTransformer] instance.
  static APIResponseStatusEnumTypeTransformer? _instance;
}


