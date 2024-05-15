import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/charger_spot_scoped_provider.dart';
import 'package:flutter_map_app/features/charger_spot/provider/fetch_charger_spot_provider.dart';
import 'package:flutter_map_app/pages/google_map_page/provider/change_location_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constant/constant.dart';
import '../provider/draggable_controller_provider.dart';
import '../provider/page_controller_provider.dart';
import 'charger_card_list_parts/charger_card.dart';
import 'charger_card_list_parts/current_location_icon.dart';

class ChargerCardList extends HookConsumerWidget {
  const ChargerCardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(draggableControllerProvider);
    // チャージスポット取得
    final asyncValue = ref.watch(fetchChargerSpotNotifierProvider);

    return switch (asyncValue) {
      // エラー時
      AsyncError() => Container(),
      // ローディング処理
      AsyncLoading() => const SizedBox(
          height: 270,
          child: Card(child: Center(child: CircularProgressIndicator()))),
      // 正常処理時
      AsyncValue<ChargerSpotDataStatus>(:final value) => switch (value) {
          SuccessData(:final chargerList) => DraggableScrollableSheet(
              controller: controller,
              initialChildSize: GoogleMapPageConstant.cardBottomPosition,
              minChildSize: GoogleMapPageConstant.cardBottomPosition,
              maxChildSize: GoogleMapPageConstant.cardTopPosition,
              snap: true,
              snapSizes: const [
                GoogleMapPageConstant.cardBottomPosition,
                GoogleMapPageConstant.cardTopPosition
              ],
              builder: (BuildContext context, scrollController) {
                return SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        const CurrentLocationIcon(),
                        SizedBox(
                            // height: 285,
                          height: MediaQuery.textScalerOf(context).scale(285),
                            child: PageView.builder(
                                controller: ref.watch(pageControllerProvider),
                                onPageChanged: (int index) async {
                                  final data = chargerList[index];
                                  // 該当の場所まで飛ぶ
                                  ref
                                      .read(changeLocationProvider.notifier)
                                      .toTargetLocation(
                                          data.latitude, data.longitude);
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: chargerList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final data = chargerList[index];
                                  // 以下のChargerCardコンポーネントに情報をprovider。
                                  // overrideしない場合、エラーになるので注意。
                                  return ProviderScope(
                                      key: ValueKey(chargerList[index].uuid),
                                      overrides: [
                                        chargerSpotScopedProvider
                                            .overrideWithValue(data)
                                      ],
                                      child: const ChargerCard());
                                }))
                      ],
                    ));
              }),
          // 正常処理だが、一覧データが存在しない場合
          _ => const CurrentLocationIcon()
        },
    };
  }
}
