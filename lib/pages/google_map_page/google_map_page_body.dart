import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_app/pages/google_map_page/widget/charger_card_list.dart';
import 'package:flutter_map_app/pages/google_map_page/widget/charger_map.dart';
import 'package:flutter_map_app/pages/google_map_page/widget/search_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoogleMapPageBody extends HookConsumerWidget {
  const GoogleMapPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Stack(
      children: [
        // Googleマップ
        ChargerMap(),
        // 検索エリア
        Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 10, left: 10),
              child: SearchField(),
            )),
        // 充電一覧
        Align(alignment: Alignment.bottomCenter, child: ChargerCardList())
      ],
    );
  }
}
