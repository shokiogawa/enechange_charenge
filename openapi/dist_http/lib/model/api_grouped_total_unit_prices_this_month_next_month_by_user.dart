//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIGroupedTotalUnitPricesThisMonthNextMonthByUser {
  /// Returns a new [APIGroupedTotalUnitPricesThisMonthNextMonthByUser] instance.
  APIGroupedTotalUnitPricesThisMonthNextMonthByUser({
    this.chargerDeviceCodes = const [],
    this.power,
    this.expires,
    this.monthPrices = const [],
  });

  List<String> chargerDeviceCodes;

  /// 充電出力
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? power;

  /// 適用期限
  DateTime? expires;

  /// 最初の60分は無料といった単価設定に対応するため、配列で出力。
  List<APIMonthPrice> monthPrices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIGroupedTotalUnitPricesThisMonthNextMonthByUser &&
    _deepEquality.equals(other.chargerDeviceCodes, chargerDeviceCodes) &&
    other.power == power &&
    other.expires == expires &&
    _deepEquality.equals(other.monthPrices, monthPrices);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chargerDeviceCodes.hashCode) +
    (power == null ? 0 : power!.hashCode) +
    (expires == null ? 0 : expires!.hashCode) +
    (monthPrices.hashCode);

  @override
  String toString() => 'APIGroupedTotalUnitPricesThisMonthNextMonthByUser[chargerDeviceCodes=$chargerDeviceCodes, power=$power, expires=$expires, monthPrices=$monthPrices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'charger_device_codes'] = this.chargerDeviceCodes;
    if (this.power != null) {
      json[r'power'] = this.power;
    } else {
      json[r'power'] = null;
    }
    if (this.expires != null) {
      json[r'expires'] = this.expires!.toUtc().toIso8601String();
    } else {
      json[r'expires'] = null;
    }
      json[r'month_prices'] = this.monthPrices;
    return json;
  }

  /// Returns a new [APIGroupedTotalUnitPricesThisMonthNextMonthByUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIGroupedTotalUnitPricesThisMonthNextMonthByUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIGroupedTotalUnitPricesThisMonthNextMonthByUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIGroupedTotalUnitPricesThisMonthNextMonthByUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIGroupedTotalUnitPricesThisMonthNextMonthByUser(
        chargerDeviceCodes: json[r'charger_device_codes'] is Iterable
            ? (json[r'charger_device_codes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        power: mapValueOfType<String>(json, r'power'),
        expires: mapDateTime(json, r'expires', r''),
        monthPrices: APIMonthPrice.listFromJson(json[r'month_prices']),
      );
    }
    return null;
  }

  static List<APIGroupedTotalUnitPricesThisMonthNextMonthByUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIGroupedTotalUnitPricesThisMonthNextMonthByUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIGroupedTotalUnitPricesThisMonthNextMonthByUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIGroupedTotalUnitPricesThisMonthNextMonthByUser> mapFromJson(dynamic json) {
    final map = <String, APIGroupedTotalUnitPricesThisMonthNextMonthByUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIGroupedTotalUnitPricesThisMonthNextMonthByUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIGroupedTotalUnitPricesThisMonthNextMonthByUser-objects as value to a dart map
  static Map<String, List<APIGroupedTotalUnitPricesThisMonthNextMonthByUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIGroupedTotalUnitPricesThisMonthNextMonthByUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIGroupedTotalUnitPricesThisMonthNextMonthByUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

