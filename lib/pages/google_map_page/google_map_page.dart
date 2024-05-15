import 'package:flutter/material.dart';
import 'package:flutter_map_app/features/charger_spot/provider/fetch_charger_spot_provider.dart';
import 'package:flutter_map_app/features/location/provider/check_current_location_settings_provider.dart';
import 'package:flutter_map_app/features/location/provider/fetch_current_location_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/widget/show_setting_dialog.dart';
import 'google_map_page_body.dart';

class GoogleMapPage extends HookConsumerWidget {
  const GoogleMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 充電スポット取得時のエラーをユーザーに伝える
    ref.listen(fetchChargerSpotNotifierProvider, (previous, next) {
      switch (next) {
        // リクエスト時のエラー発生時
        case AsyncError(:final error):
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("リスト取得時にエラーが発生しました。")));
        // 正常処理
        case AsyncData(:final value):
          switch (value) {
            // 検索範囲が広すぎる場合
            case DistanceTooLarge():
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("範囲が広すぎます。")));
            // 緯度軽度が取得できない場合
            case LatLngsIsBlank():
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("緯度軽度を取得できませんでした。")));
            // 検索結果が存在しなかった場合
            case DataEmpty():
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("この範囲に充電スポットは存在しません。")));
            default:
          }
        default:
      }
    });

    // 現在地取得のエラー処理
    ref.listen(checkCurrentLocationSettingsProvider, (previous, next) {
      switch (next) {
        case AsyncData(:final value):
          switch (value) {
            // TODO: 設定画面に遷移させる
            case ServiceDisable():
            case PermissionDenied():
            case PermissionDeniedForever():
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("位置情報が取得できません、設定から位置情報使用の許可をしてください。")));
            default:
          }
        case AsyncError(:final error):
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("現在位置情報の取得でエラーが発生しました。")));
      }
    });
    return const SafeArea(
      child: Scaffold(
        body: GoogleMapPageBody(),
      ),
    );
  }
}
