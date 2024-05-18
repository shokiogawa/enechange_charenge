import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/charger_spot_scoped_provider.dart';
import 'package:flutter_map_app/pages/google_map_page/provider/change_location_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constant/constant.dart';
import '../../provider/draggable_controller_provider.dart';
import 'charger_card_image.dart';
import 'charger_card_info_list.dart';

class ChargerCard extends HookConsumerWidget {
  const ChargerCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draggableController = ref.watch(draggableControllerProvider);
    final data = ref.watch(chargerSpotScopedProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          // カードを下げる
          if (draggableController.size >=
              GoogleMapPageConstant.cardTopPosition) {
            draggableController.animateTo(
                GoogleMapPageConstant.cardBottomPosition,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut);
          }

          // カードを上げる
          if (draggableController.size <=
              GoogleMapPageConstant.cardBottomPosition) {
            draggableController.animateTo(GoogleMapPageConstant.cardTopPosition,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut);

            // カードをあげた場合は、対象スポットの場所に飛ぶ
            ref
                .read(changeLocationProvider.notifier)
                .toTargetLocation(data.latitude, data.longitude);
          }
        },
        child: Card(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: ChargerCardImage(images: data.images)),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 名前
                        Text(
                          data.name,
                          maxLines: 2,
                          textScaler: MediaQuery.textScalerOf(context).clamp(
                            maxScaleFactor: 1.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        // 充電スポットの情報リスト
                        const Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 8),
                          child: ChargerCardInfoList(),
                        ),
                        // 経路
                        GestureDetector(
                          onTap: () async {
                            late Uri url;
                            if (Platform.isAndroid) {
                              url = Uri.parse(
                                  'https://www.google.com/maps/search/?api=1&query=${data.latitude},${data.longitude}');
                            }
                            if (Platform.isIOS) {
                              url = Uri.parse(
                                  'https://maps.apple.com/?q=${data.latitude},${data.longitude}');
                            }
                            if (!await launchUrl(url)) {
                              throw Exception('Could not launch $url');
                            }
                          },
                          child: const Row(
                            children: [
                              Flexible(
                                flex: 7,
                                child: Text("地図アプリで経路をみる",
                                    style: TextStyle(
                                      color: Color(0xff56C600),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xff56C600),
                                    )),
                              ),
                              Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: Icon(
                                    Icons.filter_none,
                                    size: 15,
                                    color: Color(0xff56C600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
