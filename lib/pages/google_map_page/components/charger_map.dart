import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/location/provider/fetch_current_location_provider.dart';
import 'package:flutter_map_app/pages/google_map_page/provider/google_map_marker_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../common/const/location.dart';
import '../../../common/provider/google_map_controller_provider.dart';

class ChargerMap extends HookConsumerWidget {
  const ChargerMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocationAsyncValue = ref.watch(fetchCurrentLocationProvider);
    final markerAsyncValue = ref.watch(googleMapMarkerProvider);
    final Completer<GoogleMapController> googleMapController =
        ref.watch(googleMapControllerProvider);
    switch (currentLocationAsyncValue) {
      // ローディング処理時
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      // それ以外
      default:
        // 現在の位置を取得
        final latLang = switch (currentLocationAsyncValue) {
          AsyncData(value: final value) =>
            LatLng(value.latitude, value.longitude),
          _ => LatLng(LocationConstant.tokyoStationLatitude,
              LocationConstant.tokyoStationLongitude)
        };
        // マーカーを取得
        final markers = switch (markerAsyncValue) {
          AsyncData(:final value) => value,
          AsyncError(:final error) => <Marker>{},
          _ => <Marker>{}
        };
        return GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(target: latLang, zoom: 17),
          myLocationEnabled: true,
          markers: markers,
          onMapCreated: (GoogleMapController controller) {
            googleMapController.complete(controller);
          },
        );
    }
  }
}
