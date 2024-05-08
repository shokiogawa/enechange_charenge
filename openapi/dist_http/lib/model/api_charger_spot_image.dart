//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIChargerSpotImage {
  /// Returns a new [APIChargerSpotImage] instance.
  APIChargerSpotImage({
    required this.url,
    this.caption,
  });

  String url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caption;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIChargerSpotImage &&
    other.url == url &&
    other.caption == caption;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (caption == null ? 0 : caption!.hashCode);

  @override
  String toString() => 'APIChargerSpotImage[url=$url, caption=$caption]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
    if (this.caption != null) {
      json[r'caption'] = this.caption;
    } else {
      json[r'caption'] = null;
    }
    return json;
  }

  /// Returns a new [APIChargerSpotImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIChargerSpotImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIChargerSpotImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIChargerSpotImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIChargerSpotImage(
        url: mapValueOfType<String>(json, r'url')!,
        caption: mapValueOfType<String>(json, r'caption'),
      );
    }
    return null;
  }

  static List<APIChargerSpotImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIChargerSpotImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIChargerSpotImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIChargerSpotImage> mapFromJson(dynamic json) {
    final map = <String, APIChargerSpotImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIChargerSpotImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIChargerSpotImage-objects as value to a dart map
  static Map<String, List<APIChargerSpotImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIChargerSpotImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIChargerSpotImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}

