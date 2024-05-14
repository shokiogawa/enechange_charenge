import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'components/charger_card_list.dart';
import 'components/charger_map.dart';
import 'components/search_field.dart';

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
        Align(
          alignment: Alignment.bottomCenter,
            child: ChargerCardList())
      ],
    );
  }
}
