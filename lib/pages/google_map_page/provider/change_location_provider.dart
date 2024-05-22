import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/provider/fetch_current_location_provider.dart';
import '../../../common/provider/google_map_controller_provider.dart';

part 'change_location_provider.g.dart';

@riverpod
class ChangeLocation extends _$ChangeLocation {
  @override
  void build() {}

  // 現在地まで戻る
  Future<void> toCurrentLocation() async {
    final currentLocation =
    await ref.watch(fetchCurrentLocationProvider.future);
    final Completer<GoogleMapController> googleMapController =
    ref.watch(googleMapControllerProvider);
    final position =
    LatLng(currentLocation.latitude, currentLocation.longitude);

    final controller = await googleMapController.future;
    controller.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 17)));
  }

  // 指定の緯度軽度まで移動する
  Future<void> toTargetLocation(double latitude, double longitude) async {
    final Completer<GoogleMapController> googleMapController =
    ref.watch(googleMapControllerProvider);
    final position = LatLng(latitude, longitude);

    final controller = await googleMapController.future;
    controller.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 17)));
  }
}