
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_map_controller_provider.g.dart';

@riverpod
Completer<GoogleMapController> googleMapController(GoogleMapControllerRef ref){
  return Completer();
}