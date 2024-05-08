//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIMonthPrice {
  /// Returns a new [APIMonthPrice] instance.
  APIMonthPrice({
    required this.month,
    this.prices = const [],
  });

  String month;

  List<APIPrice> prices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIMonthPrice &&
    other.month == month &&
    _deepEquality.equals(other.prices, prices);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (month.hashCode) +
    (prices.hashCode);

  @override
  String toString() => 'APIMonthPrice[month=$month, prices=$prices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'month'] = this.month;
      json[r'prices'] = this.prices;
    return json;
  }

  /// Returns a new [APIMonthPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIMonthPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIMonthPrice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIMonthPrice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIMonthPrice(
        month: mapValueOfType<String>(json, r'month')!,
        prices: APIPrice.listFromJson(json[r'prices']),
      );
    }
    return null;
  }

  static List<APIMonthPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIMonthPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIMonthPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIMonthPrice> mapFromJson(dynamic json) {
    final map = <String, APIMonthPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIMonthPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIMonthPrice-objects as value to a dart map
  static Map<String, List<APIMonthPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIMonthPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIMonthPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'month',
    'prices',
  };
}

