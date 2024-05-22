import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/fetch_charger_spot_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/provider/google_map_controller_provider.dart';

class SearchField extends HookConsumerWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chargerSpotAsyncValue = ref.watch(fetchChargerSpotNotifierProvider);
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        // 連打防止
        onTap: chargerSpotAsyncValue.isLoading
            ? null
            : () async {
                // 現在見えている範囲を取得
                final visibleRegionArea =
                    await (await ref.watch(googleMapControllerProvider).future)
                        .getVisibleRegion();

                // 再検索
                ref
                    .read(fetchChargerSpotNotifierProvider.notifier)
                    .searchChargerSpot(
                        swLat: visibleRegionArea.southwest.latitude.toString(),
                        swLng: visibleRegionArea.southwest.longitude.toString(),
                        neLat: visibleRegionArea.northeast.latitude.toString(),
                        neLng:
                            visibleRegionArea.northeast.longitude.toString());
              },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          color: const Color(0xffECF9E3),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 4,
                    child: Text(
                      chargerSpotAsyncValue.isLoading
                          ? "検索中..."
                          : "このエリアでスポットを検索",
                      style: const TextStyle(
                          fontSize: 15, color: Color(0xff56C600)),
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: Icon(
                      Icons.search,
                      color: Color(0xff56C600),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
