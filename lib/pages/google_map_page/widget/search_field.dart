import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/fetch_charger_spot_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                ref
                    .read(fetchChargerSpotNotifierProvider.notifier)
                    .searchChargerSpot();
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
                      style:
                          const TextStyle(fontSize: 15, color: Color(0xff56C600)),
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
