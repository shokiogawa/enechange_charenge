import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/charger_spot_scoped_provider.dart';
import 'package:flutter_map_app/features/charger_spot/provider/fetch_charger_spot_provider.dart';
import 'package:flutter_map_app/pages/google_map_page/provider/change_location_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../common/const/open_map_app.dart';
import '../../../common/provider/fetch_current_location_provider.dart';
import '../../../gen/assets.gen.dart';
import '../constant/constant.dart';
import '../provider/draggable_controller_provider.dart';
import '../provider/page_controller_provider.dart';

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
          DataExist(:final chargerList) => DraggableScrollableSheet(
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
                        // 現在位置に遷移するアイコンボタン
                        const _CurrentLocationIcon(),

                        // カルーセル
                        SizedBox(
                            //height: 285,
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
                                      child: const _ChargerCard());
                                }))
                      ],
                    ));
              }),
          // 正常処理だが、一覧データが存在しない場合
          _ => const _CurrentLocationIcon()
        },
    };
  }
}

// 現在位置遷移アイコンボタン
class _CurrentLocationIcon extends HookConsumerWidget {
  const _CurrentLocationIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentAsync = ref.watch(fetchCurrentLocationProvider);
    return switch (currentAsync) {
      AsyncData(:final value) => Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.black.withOpacity(0.7),
              onPressed: () async {
                // 現在地まで飛ぶ
                ref.read(changeLocationProvider.notifier).toCurrentLocation();
              },
              child: const Icon(
                Icons.my_location,
                color: Colors.white,
              ),
            ),
          )),
      _ => Container()
    };
  }
}

// 充電スポット情報詳細カード
class _ChargerCard extends HookConsumerWidget {
  const _ChargerCard({super.key});

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
                Expanded(
                    flex: 1, child: _ChargerCardImage(images: data.images)),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // 充電器数
                              _ChargerCardInfo(
                                  iconData: Icons.power,
                                  label: const Text("充電器数"),
                                  value: "${data.chargerDeviceCount}台"),
                              const SizedBox(height: 7),
                              // 充電出力
                              _ChargerCardInfo(
                                  iconData: Icons.electric_bolt,
                                  label: const Text("充電出力"),
                                  value: data.power),
                              const SizedBox(height: 7),
                              // 営業中
                              _ChargerCardInfo(
                                iconData: Icons.access_time_outlined,
                                label: data.nowAvailable
                                    ? const Text(
                                        "営業中",
                                        style:
                                            TextStyle(color: Color(0xff56C600)),
                                      )
                                    : const Text(
                                        "営業時間外",
                                        style:
                                            TextStyle(color: Color(0xff949494)),
                                      ),
                                value: data.todayServiceTime,
                              ),
                              const SizedBox(height: 7),
                              // 定休日
                              _ChargerCardInfo(
                                  iconData: Icons.calendar_today,
                                  label: const Text(
                                    "定休日",
                                  ),
                                  value: data.regularClosingDays),
                              const SizedBox(height: 7),
                            ],
                          ),
                        ),
                        // 経路
                        GestureDetector(
                          onTap: () async {
                            OpenMap.withDestination(data.latitude.toString(),
                                data.longitude.toString());
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

// 充電スポット情報詳細カードの画像部分
class _ChargerCardImage extends StatelessWidget {
  const _ChargerCardImage({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return images.isNotEmpty
        ? CachedNetworkImage(
            width: double.infinity,
            imageUrl: images[0],
            fit: BoxFit.fitWidth,
          )
        : Assets.images.noImage.image(fit: BoxFit.fill);
  }
}

// 充電スポットの各情報
class _ChargerCardInfo extends HookConsumerWidget {
  const _ChargerCardInfo(
      {super.key,
      required this.iconData,
      required this.label,
      required this.value});

  final IconData iconData;
  final Text label;
  final String value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  iconData,
                  color: const Color(0xffFFB800),
                  size: 15,
                ),
              ),
              Expanded(flex: 4, child: label)
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}
