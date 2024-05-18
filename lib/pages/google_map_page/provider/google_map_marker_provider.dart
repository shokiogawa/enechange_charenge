import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map_app/features/charger_spot/model/charger_spot_model.dart';
import 'package:flutter_map_app/features/charger_spot/provider/fetch_charger_spot_provider.dart';
import 'package:flutter_map_app/pages/google_map_page/provider/page_controller_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:ui' as ui;

import '../../../gen/assets.gen.dart';

part 'google_map_marker_provider.g.dart';

@riverpod
Future<Set<Marker>> googleMapMarker(GoogleMapMarkerRef ref) async {
  // 充電スポットのProviderを親にもつ。
  final status = await ref.watch(fetchChargerSpotNotifierProvider.future);

  switch (status) {
    // 充電スポット取得時のみマーカーを作成する。
    case DataExist(:final chargerList):
      List<Marker> markerList = <Marker>[];
      await Future.forEach(chargerList.asMap().entries, (e) async {
        final index = e.key;
        final ChargerSpotModel value = e.value;

        // テストエリア
        final recorder = ui.PictureRecorder();
        final canvas = Canvas(recorder);
        final Paint paint = Paint()
          ..style = PaintingStyle.fill
          ..strokeWidth = 2
          ..color = Colors.green;

        // 画像読み込み
        ByteData imageData = await rootBundle.load(Assets.images.pin.path);

        ui.Codec codec = await ui.instantiateImageCodec(
            imageData.buffer.asUint8List(),
            targetWidth: 100);
        ui.FrameInfo fi = await codec.getNextFrame();
        final byteImageData =
            (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
                .buffer
                .asUint8List();
        final decodeImageData = await decodeImageFromList(byteImageData);

        canvas.drawImage(decodeImageData, const Offset(0, 0), paint);

        paint.color = Colors.white;
        canvas.drawCircle(const Offset(43, 45), 25, paint);

        final span = TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          text: value.chargerDeviceCount.toString(),
        );

        final textPainter = TextPainter(
          text: span,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        );

        textPainter.layout();
        textPainter.paint(
            canvas, Offset(value.chargerDeviceCount < 10 ? 35 : 27, 31));

        final picture = recorder.endRecording();
        final image = await picture.toImage(
            decodeImageData.width, decodeImageData.height);
        final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
        final Uint8List bytes = byteData!.buffer.asUint8List();

        final position = LatLng(value.latitude, value.longitude);
        final createdMarker = Marker(
            onTap: () {
              ref.read(pageControllerProvider).jumpToPage(index);
            },
            markerId: MarkerId(value.uuid),
            position: position,
            icon: BitmapDescriptor.fromBytes(bytes),
            infoWindow: InfoWindow(title: value.name));
        markerList.add(createdMarker);
      });
      return markerList.toSet();
    // データが存在しない場合は空を返す。
    default:
      return <Marker>{};
  }
}

// 別案 以下HP参考
// https://medium.com/@pvaddoriya1246/creating-custom-markers-in-flutter-a-comprehensive-guide-widget-to-custom-marker-9f2bef3fa614
// Future<BitmapDescriptor> getCustomIcon(int number) async {
//   return Stack(
//     children: [
//       SizedBox(
//         height: 55,
//         width: 40,
//         child: Assets.images.pin.image(fit: BoxFit.cover),
//       ),
//       Positioned(
//         top: 11,
//         left: 7.6,
//         child: Container(
//           height: 20,
//           width: 20,
//           decoration:
//               const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//           child: Padding(
//             padding: const EdgeInsets.all(2.0),
//             child: Center(
//               child: Text(
//                 number.toString(),
//                 style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ),
//       )
//     ],
//   ).toBitmapDescriptor();
// }
//
// extension ToBitDescription on Widget {
//   Future<BitmapDescriptor> toBitmapDescriptor(
//       {Duration waitToRender = const Duration(milliseconds: 300),
//       TextDirection textDirection = TextDirection.ltr}) async {
//     final widget = RepaintBoundary(
//       child: MediaQuery(
//           data: const MediaQueryData(),
//           child: Directionality(textDirection: TextDirection.ltr, child: this)),
//     );
//     final pngBytes =
//         await createImageFromWidget(widget, waitToRender: waitToRender);
//     return BitmapDescriptor.fromBytes(pngBytes);
//   }
// }
//
// Future<Uint8List> createImageFromWidget(Widget widget,
//     {required Duration waitToRender, Size? imageSize}) async {
//   final RenderRepaintBoundary repaintBoundary = RenderRepaintBoundary();
//   final view = ui.PlatformDispatcher.instance.views.first;
//   final logicalSize = view.physicalSize / view.devicePixelRatio;
//   final imageSize = view.physicalSize;
//
//   final RenderView renderView = RenderView(
//     view: view,
//     child: RenderPositionedBox(
//         alignment: Alignment.center, child: repaintBoundary),
//     configuration: ViewConfiguration(
//       size: logicalSize,
//       devicePixelRatio: 1.0,
//     ),
//   );
//
//   final PipelineOwner pipelineOwner = PipelineOwner();
//   final BuildOwner buildOwner = BuildOwner(focusManager: FocusManager());
//
//   pipelineOwner.rootNode = renderView;
//   renderView.prepareInitialFrame();
//
//   final RenderObjectToWidgetElement<RenderBox> rootElement =
//       RenderObjectToWidgetAdapter<RenderBox>(
//     container: repaintBoundary,
//     child: widget,
//   ).attachToRenderTree(buildOwner);
//
//   buildOwner.buildScope(rootElement);
//
//   await Future.delayed(waitToRender);
//
//   buildOwner.buildScope(rootElement);
//   buildOwner.finalizeTree();
//
//   pipelineOwner.flushLayout();
//   pipelineOwner.flushCompositingBits();
//   pipelineOwner.flushPaint();
//
//   final ui.Image image = await repaintBoundary.toImage(
//       pixelRatio: imageSize.width / logicalSize.width);
//   final ByteData? byteData =
//       await image.toByteData(format: ui.ImageByteFormat.png);
//
//   return byteData!.buffer.asUint8List();
// }
