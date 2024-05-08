//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIPrice {
  /// Returns a new [APIPrice] instance.
  APIPrice({
    required this.price,
    this.price3kw,
    required this.unitMinutes,
    required this.minuteFrom,
    this.minuteTo,
    required this.unitType,
    required this.unitValue,
    this.kwhFrom,
    this.kwhTo,
  });

  String price;

  String? price3kw;

  /// 課金の単位時間（unit_valueに移管するので使わない）
  String unitMinutes;

  num minuteFrom;

  num? minuteTo;

  /// 単価が時間課金かkWh課金か
  APIPriceUnitTypeEnum unitType;

  /// 課金の単位の数値（unit_typeがminuteでunit_valueが10なら10分あたり）
  String unitValue;

  num? kwhFrom;

  num? kwhTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIPrice &&
    other.price == price &&
    other.price3kw == price3kw &&
    other.unitMinutes == unitMinutes &&
    other.minuteFrom == minuteFrom &&
    other.minuteTo == minuteTo &&
    other.unitType == unitType &&
    other.unitValue == unitValue &&
    other.kwhFrom == kwhFrom &&
    other.kwhTo == kwhTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (price.hashCode) +
    (price3kw == null ? 0 : price3kw!.hashCode) +
    (unitMinutes.hashCode) +
    (minuteFrom.hashCode) +
    (minuteTo == null ? 0 : minuteTo!.hashCode) +
    (unitType.hashCode) +
    (unitValue.hashCode) +
    (kwhFrom == null ? 0 : kwhFrom!.hashCode) +
    (kwhTo == null ? 0 : kwhTo!.hashCode);

  @override
  String toString() => 'APIPrice[price=$price, price3kw=$price3kw, unitMinutes=$unitMinutes, minuteFrom=$minuteFrom, minuteTo=$minuteTo, unitType=$unitType, unitValue=$unitValue, kwhFrom=$kwhFrom, kwhTo=$kwhTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'price'] = this.price;
    if (this.price3kw != null) {
      json[r'price_3kw'] = this.price3kw;
    } else {
      json[r'price_3kw'] = null;
    }
      json[r'unit_minutes'] = this.unitMinutes;
      json[r'minute_from'] = this.minuteFrom;
    if (this.minuteTo != null) {
      json[r'minute_to'] = this.minuteTo;
    } else {
      json[r'minute_to'] = null;
    }
      json[r'unit_type'] = this.unitType;
      json[r'unit_value'] = this.unitValue;
    if (this.kwhFrom != null) {
      json[r'kwh_from'] = this.kwhFrom;
    } else {
      json[r'kwh_from'] = null;
    }
    if (this.kwhTo != null) {
      json[r'kwh_to'] = this.kwhTo;
    } else {
      json[r'kwh_to'] = null;
    }
    return json;
  }

  /// Returns a new [APIPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIPrice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIPrice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIPrice(
        price: mapValueOfType<String>(json, r'price')!,
        price3kw: mapValueOfType<String>(json, r'price_3kw'),
        unitMinutes: mapValueOfType<String>(json, r'unit_minutes')!,
        minuteFrom: num.parse('${json[r'minute_from']}'),
        minuteTo: json[r'minute_to'] == null
            ? null
            : num.parse('${json[r'minute_to']}'),
        unitType: APIPriceUnitTypeEnum.fromJson(json[r'unit_type'])!,
        unitValue: mapValueOfType<String>(json, r'unit_value')!,
        kwhFrom: json[r'kwh_from'] == null
            ? null
            : num.parse('${json[r'kwh_from']}'),
        kwhTo: json[r'kwh_to'] == null
            ? null
            : num.parse('${json[r'kwh_to']}'),
      );
    }
    return null;
  }

  static List<APIPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIPrice> mapFromJson(dynamic json) {
    final map = <String, APIPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIPrice-objects as value to a dart map
  static Map<String, List<APIPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'price',
    'unit_minutes',
    'minute_from',
    'unit_type',
    'unit_value',
  };
}

/// 単価が時間課金かkWh課金か
class APIPriceUnitTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const APIPriceUnitTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const minute = APIPriceUnitTypeEnum._(r'minute');
  static const kwh = APIPriceUnitTypeEnum._(r'kwh');

  /// List of all possible values in this [enum][APIPriceUnitTypeEnum].
  static const values = <APIPriceUnitTypeEnum>[
    minute,
    kwh,
  ];

  static APIPriceUnitTypeEnum? fromJson(dynamic value) => APIPriceUnitTypeEnumTypeTransformer().decode(value);

  static List<APIPriceUnitTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIPriceUnitTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIPriceUnitTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [APIPriceUnitTypeEnum] to String,
/// and [decode] dynamic data back to [APIPriceUnitTypeEnum].
class APIPriceUnitTypeEnumTypeTransformer {
  factory APIPriceUnitTypeEnumTypeTransformer() => _instance ??= const APIPriceUnitTypeEnumTypeTransformer._();

  const APIPriceUnitTypeEnumTypeTransformer._();

  String encode(APIPriceUnitTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a APIPriceUnitTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  APIPriceUnitTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'minute': return APIPriceUnitTypeEnum.minute;
        case r'kwh': return APIPriceUnitTypeEnum.kwh;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [APIPriceUnitTypeEnumTypeTransformer] instance.
  static APIPriceUnitTypeEnumTypeTransformer? _instance;
}


