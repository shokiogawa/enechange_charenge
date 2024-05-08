//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIGogoevChargerDevice {
  /// Returns a new [APIGogoevChargerDevice] instance.
  APIGogoevChargerDevice({
    this.deviceTypes = const [],
    this.power,
    required this.number,
    required this.fee,
    this.authenticationNetworks = const [],
    this.authenticationApps = const [],
  });

  /// 充電器の種類
  List<String> deviceTypes;

  /// 充電出力
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? power;

  /// 充電器数
  num number;

  /// 充電料金
  String fee;

  /// 認証ネットワーク
  List<String> authenticationNetworks;

  /// 認証アプリ
  List<String> authenticationApps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIGogoevChargerDevice &&
    _deepEquality.equals(other.deviceTypes, deviceTypes) &&
    other.power == power &&
    other.number == number &&
    other.fee == fee &&
    _deepEquality.equals(other.authenticationNetworks, authenticationNetworks) &&
    _deepEquality.equals(other.authenticationApps, authenticationApps);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceTypes.hashCode) +
    (power == null ? 0 : power!.hashCode) +
    (number.hashCode) +
    (fee.hashCode) +
    (authenticationNetworks.hashCode) +
    (authenticationApps.hashCode);

  @override
  String toString() => 'APIGogoevChargerDevice[deviceTypes=$deviceTypes, power=$power, number=$number, fee=$fee, authenticationNetworks=$authenticationNetworks, authenticationApps=$authenticationApps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'device_types'] = this.deviceTypes;
    if (this.power != null) {
      json[r'power'] = this.power;
    } else {
      json[r'power'] = null;
    }
      json[r'number'] = this.number;
      json[r'fee'] = this.fee;
      json[r'authentication_networks'] = this.authenticationNetworks;
      json[r'authentication_apps'] = this.authenticationApps;
    return json;
  }

  /// Returns a new [APIGogoevChargerDevice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIGogoevChargerDevice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIGogoevChargerDevice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIGogoevChargerDevice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIGogoevChargerDevice(
        deviceTypes: json[r'device_types'] is Iterable
            ? (json[r'device_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        power: mapValueOfType<String>(json, r'power'),
        number: num.parse('${json[r'number']}'),
        fee: mapValueOfType<String>(json, r'fee')!,
        authenticationNetworks: json[r'authentication_networks'] is Iterable
            ? (json[r'authentication_networks'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        authenticationApps: json[r'authentication_apps'] is Iterable
            ? (json[r'authentication_apps'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<APIGogoevChargerDevice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIGogoevChargerDevice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIGogoevChargerDevice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIGogoevChargerDevice> mapFromJson(dynamic json) {
    final map = <String, APIGogoevChargerDevice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIGogoevChargerDevice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIGogoevChargerDevice-objects as value to a dart map
  static Map<String, List<APIGogoevChargerDevice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIGogoevChargerDevice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIGogoevChargerDevice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'number',
    'fee',
    'authentication_networks',
    'authentication_apps',
  };
}

