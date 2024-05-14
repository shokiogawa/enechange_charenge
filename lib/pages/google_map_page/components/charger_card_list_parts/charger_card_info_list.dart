import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/charger_spot_scoped_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/api.dart';
import 'charger_card_info.dart';

class ChargerCardInfoList extends HookConsumerWidget {
  const ChargerCardInfoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(chargerSpotScopedProvider);
    // TODO: textScaler対応
    // final textScaler = MediaQuery.textScalerOf(context).clamp(
    //   maxScaleFactor: 1.5,
    // );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 充電器数
        ChargerCardInfo(
            iconData: Icons.power,
            label: const Text("充電器数"),
            value: "${data.chargerDeviceCount}台"),
        const SizedBox(height: 7),
        // 充電出力
        ChargerCardInfo(
            iconData: Icons.electric_bolt,
            label: const Text("充電出力"),
            value: "${data.power}kW"),
        const SizedBox(height: 7),
        // 営業中
        ChargerCardInfo(
          iconData: Icons.access_time_outlined,
          label: data.nowAvailable
              ? const Text(
            "営業中",
            style: TextStyle(color: Color(0xff56C600)),
          )
              : const Text(
            "営業時間外",
            style: TextStyle(color: Color(0xff949494)),
          ),
          value: data.todayServiceTime,
        ),
        const SizedBox(height: 7),
        // 定休日
        ChargerCardInfo(
            iconData: Icons.calendar_today,
            label: const Text(
              "定休日",
            ),
            value: data.regularClosingDays),
        const SizedBox(height: 7),
      ],
    );
  }
}
