import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class OpenMap {
  static const googleMapApp = "https://www.google.com";
  static const appleMapApp = "https://maps.apple.com";

  // 目的地を表示する。
  static Future<void> withDestination(String latitude, String longitude) async {
    late Uri url;
    if (Platform.isAndroid) {
      url = Uri.parse(
          '$googleMapApp/maps/dir/?api=1&destination=$latitude,$longitude');
    } else if (Platform.isIOS) {
      url = Uri.parse('$appleMapApp?daddr=$latitude,$longitude&dirflg=d');
    } else {
      throw UnsupportedError("This platform is not supported");
    }

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
