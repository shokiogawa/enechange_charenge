import 'package:flutter/foundation.dart';

class Configuration {
  // flavorの確認
  static Flavor get flavor {
    const flavorString = String.fromEnvironment('flavor');
    return Flavor.getFromString(flavorString);
  }

  // リリースモードかどうか
  static bool get releaseMode => kReleaseMode && flavor == Flavor.production;

  // apikey設定
  static String get apiKey {
    const apikey = String.fromEnvironment("ENECHANGE_API_KEY");
    if (apikey == "") {
      throw Exception("API Keyを正しく設定してください。");
    }
    return apikey;
  }
}

enum Flavor {
  develop,
  production;

  static Flavor getFromString(String flavorString) => switch (flavorString) {
    'dev' => Flavor.develop,
    'prod' => Flavor.production,
    _ => throw Exception('Unknown flavor string: $flavorString'),
  };
}