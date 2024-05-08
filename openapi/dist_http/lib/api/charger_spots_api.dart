//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ChargerSpotsApi {
  ChargerSpotsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 充電スポットと充電スポットに紐づく充電器を返します。緯度経度（４つ）、uuidまたはtextのいずれかが必須。
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] X_EVENE_NATIVE_API_TOKEN (required):
  ///   認証トークン
  ///
  /// * [String] userUuid:
  ///   ユーザのuuid
  ///
  /// * [String] swLat:
  ///   検索したいエリアの最南西（左下）の緯度
  ///
  /// * [String] swLng:
  ///   検索したいエリアの最南西（左下）の経度
  ///
  /// * [String] neLat:
  ///   検索したいエリアの最北東（右上）の緯度
  ///
  /// * [String] neLng:
  ///   検索したいエリアの最北東（右上）の経度
  ///
  /// * [String] uuid:
  ///   検索したい充電スポットのuuid。カンマ区切りで連結して複数スポットを取得可能
  ///
  /// * [String] text:
  ///   検索したい充電スポットの名称（部分一致で検索）
  ///
  /// * [String] fields:
  ///   デフォルトはすべての属性を返却、絞り込みたい場合はfieldsに属性名（note, directions, marker_label, images, service_time_note, now_available, grouped_total_unit_prices_this_month_next_month, grouped_total_unit_prices_this_month_next_month_by_user, charger_spot_service_times, charger_devices, gogoev_charger_devices, address, facility_type, phone_number, parking_fee, advance_contact, gogoev_notes, maintenance_note, maintenance_status）をカンマ区切りで連結
  ///
  /// * [String] deviceTypes:
  ///   充電種別（chademo: CHAdeMO, 100v: 100V, 200v: 200V, tesla: TESLA）カンマ区切りで連結
  ///
  /// * [String] feeTypes:
  ///   充電料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
  ///
  /// * [String] nowAvailable:
  ///   現在利用可能か（true: 利用可能, true以外：不明、利用不可）
  ///
  /// * [String] styles:
  ///   充電出力（slow: 低速 20kW未満, medium: 中速 20-40kW未満, high: 高速 40-90kW未満, extra_high: 90kW以上, pole_with_cable: ポール型ケーブル付き, pole_outlet: ポール型コンセント, outlet_with_cable: コンセントにケーブル後付け, outlet_only: コンセントのみ, super_charger: スーパーチャージャー, except_super_charger: スーパーチャージャー以外）カンマ区切りで連結
  ///
  /// * [String] gogoevAuthenticationNetworks:
  ///   認証ネットワーク（none: なし, zesp2_zesp3: 日産 ZESP2 / ZESP3, zesp_lite: 日産 ZESP ライト, mitsubishi: 三菱自動車 電動車両サポート, eco_qden: エネゲート エコQ電, jtb_regular: JTB おでかけCard レギュラー, jtb_premiere: JTB おでかけCard プレミア, evss: EVSSネットワーク, toyota_phv_drive_support: トヨタ PHV DriveSupport, toyota_phv_drive_support_plus: トヨタ PHV DriveSupport Plus, toyota_phv_support: トヨタ PHV充電サポート, toyota_g_station: トヨタ G-Station, waon: イオン WAON, times_park_and_charge: タイムズ パーク＆チャージ会員, emp_fast_ordinary: eMP 急速・普通併用, emp_fast: eMP 急速充電器用, emp_ordinary: eMP 普通充電器用, bmw_charge_now_fast_ordinary: BMW ChargeNow 急速・普通併用, bmw_charge_now_ordinary: BMW ChargeNow 普通充電器用, eneos_charge_plus: ENEOS ChargePlus, nanaco: nanaco認証, enechange: ENECHANGE, other: その他）カンマ区切りで連結
  ///
  /// * [String] categories:
  ///   施設種別（mitsubishi: 三菱ディーラー, nissan: 日産ディーラー, toyota: トヨタディーラー, mercedes: メルセデスディーラー, bmw: BMWディーラー, vw: VWディーラー, honda: HONDAディーラー, station_airport: 駅・空港, roadside_station: 道の駅, sa: サービスエリア, public_facility: 公共施設, hotel: 宿泊施設・温浴施設, shopping_mall: ショッピングモール・小売店, convenience_store: コンビニ, leisure_facility: レジャー・スポーツ施設, coin_parking: コインパーキング, car_factory: 自動車工場, restaurant: レストラン, gas_station: ガソリンスタンド, electrical_contractor: 電気工事業者, other: その他）カンマ区切りで連結
  ///
  /// * [String] open24Hours:
  ///   24時間営業か（true: 24時間営業, true以外：24時間営業ではない）
  ///
  /// * [String] advanceContacts:
  ///   事前連絡（necessary: 必要, unnecessary: 不要, unknown: 不明）カンマ区切りで連結
  ///
  /// * [String] parkingFeeTypes:
  ///   駐車料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
  Future<Response> chargerSpotsWithHttpInfo(String X_EVENE_NATIVE_API_TOKEN, { String? userUuid, String? swLat, String? swLng, String? neLat, String? neLng, String? uuid, String? text, String? fields, String? deviceTypes, String? feeTypes, String? nowAvailable, String? styles, String? gogoevAuthenticationNetworks, String? categories, String? open24Hours, String? advanceContacts, String? parkingFeeTypes, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/charger_spots';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userUuid != null) {
      queryParams.addAll(_queryParams('', 'user_uuid', userUuid));
    }
    if (swLat != null) {
      queryParams.addAll(_queryParams('', 'sw_lat', swLat));
    }
    if (swLng != null) {
      queryParams.addAll(_queryParams('', 'sw_lng', swLng));
    }
    if (neLat != null) {
      queryParams.addAll(_queryParams('', 'ne_lat', neLat));
    }
    if (neLng != null) {
      queryParams.addAll(_queryParams('', 'ne_lng', neLng));
    }
    if (uuid != null) {
      queryParams.addAll(_queryParams('', 'uuid', uuid));
    }
    if (text != null) {
      queryParams.addAll(_queryParams('', 'text', text));
    }
    if (fields != null) {
      queryParams.addAll(_queryParams('', 'fields', fields));
    }
    if (deviceTypes != null) {
      queryParams.addAll(_queryParams('', 'device_types', deviceTypes));
    }
    if (feeTypes != null) {
      queryParams.addAll(_queryParams('', 'fee_types', feeTypes));
    }
    if (nowAvailable != null) {
      queryParams.addAll(_queryParams('', 'now_available', nowAvailable));
    }
    if (styles != null) {
      queryParams.addAll(_queryParams('', 'styles', styles));
    }
    if (gogoevAuthenticationNetworks != null) {
      queryParams.addAll(_queryParams('', 'gogoev_authentication_networks', gogoevAuthenticationNetworks));
    }
    if (categories != null) {
      queryParams.addAll(_queryParams('', 'categories', categories));
    }
    if (open24Hours != null) {
      queryParams.addAll(_queryParams('', 'open_24_hours', open24Hours));
    }
    if (advanceContacts != null) {
      queryParams.addAll(_queryParams('', 'advance_contacts', advanceContacts));
    }
    if (parkingFeeTypes != null) {
      queryParams.addAll(_queryParams('', 'parking_fee_types', parkingFeeTypes));
    }

    headerParams[r'X-EVENE-NATIVE-API-TOKEN'] = parameterToString(X_EVENE_NATIVE_API_TOKEN);

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 充電スポットと充電スポットに紐づく充電器を返します。緯度経度（４つ）、uuidまたはtextのいずれかが必須。
  ///
  /// Parameters:
  ///
  /// * [String] X_EVENE_NATIVE_API_TOKEN (required):
  ///   認証トークン
  ///
  /// * [String] userUuid:
  ///   ユーザのuuid
  ///
  /// * [String] swLat:
  ///   検索したいエリアの最南西（左下）の緯度
  ///
  /// * [String] swLng:
  ///   検索したいエリアの最南西（左下）の経度
  ///
  /// * [String] neLat:
  ///   検索したいエリアの最北東（右上）の緯度
  ///
  /// * [String] neLng:
  ///   検索したいエリアの最北東（右上）の経度
  ///
  /// * [String] uuid:
  ///   検索したい充電スポットのuuid。カンマ区切りで連結して複数スポットを取得可能
  ///
  /// * [String] text:
  ///   検索したい充電スポットの名称（部分一致で検索）
  ///
  /// * [String] fields:
  ///   デフォルトはすべての属性を返却、絞り込みたい場合はfieldsに属性名（note, directions, marker_label, images, service_time_note, now_available, grouped_total_unit_prices_this_month_next_month, grouped_total_unit_prices_this_month_next_month_by_user, charger_spot_service_times, charger_devices, gogoev_charger_devices, address, facility_type, phone_number, parking_fee, advance_contact, gogoev_notes, maintenance_note, maintenance_status）をカンマ区切りで連結
  ///
  /// * [String] deviceTypes:
  ///   充電種別（chademo: CHAdeMO, 100v: 100V, 200v: 200V, tesla: TESLA）カンマ区切りで連結
  ///
  /// * [String] feeTypes:
  ///   充電料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
  ///
  /// * [String] nowAvailable:
  ///   現在利用可能か（true: 利用可能, true以外：不明、利用不可）
  ///
  /// * [String] styles:
  ///   充電出力（slow: 低速 20kW未満, medium: 中速 20-40kW未満, high: 高速 40-90kW未満, extra_high: 90kW以上, pole_with_cable: ポール型ケーブル付き, pole_outlet: ポール型コンセント, outlet_with_cable: コンセントにケーブル後付け, outlet_only: コンセントのみ, super_charger: スーパーチャージャー, except_super_charger: スーパーチャージャー以外）カンマ区切りで連結
  ///
  /// * [String] gogoevAuthenticationNetworks:
  ///   認証ネットワーク（none: なし, zesp2_zesp3: 日産 ZESP2 / ZESP3, zesp_lite: 日産 ZESP ライト, mitsubishi: 三菱自動車 電動車両サポート, eco_qden: エネゲート エコQ電, jtb_regular: JTB おでかけCard レギュラー, jtb_premiere: JTB おでかけCard プレミア, evss: EVSSネットワーク, toyota_phv_drive_support: トヨタ PHV DriveSupport, toyota_phv_drive_support_plus: トヨタ PHV DriveSupport Plus, toyota_phv_support: トヨタ PHV充電サポート, toyota_g_station: トヨタ G-Station, waon: イオン WAON, times_park_and_charge: タイムズ パーク＆チャージ会員, emp_fast_ordinary: eMP 急速・普通併用, emp_fast: eMP 急速充電器用, emp_ordinary: eMP 普通充電器用, bmw_charge_now_fast_ordinary: BMW ChargeNow 急速・普通併用, bmw_charge_now_ordinary: BMW ChargeNow 普通充電器用, eneos_charge_plus: ENEOS ChargePlus, nanaco: nanaco認証, enechange: ENECHANGE, other: その他）カンマ区切りで連結
  ///
  /// * [String] categories:
  ///   施設種別（mitsubishi: 三菱ディーラー, nissan: 日産ディーラー, toyota: トヨタディーラー, mercedes: メルセデスディーラー, bmw: BMWディーラー, vw: VWディーラー, honda: HONDAディーラー, station_airport: 駅・空港, roadside_station: 道の駅, sa: サービスエリア, public_facility: 公共施設, hotel: 宿泊施設・温浴施設, shopping_mall: ショッピングモール・小売店, convenience_store: コンビニ, leisure_facility: レジャー・スポーツ施設, coin_parking: コインパーキング, car_factory: 自動車工場, restaurant: レストラン, gas_station: ガソリンスタンド, electrical_contractor: 電気工事業者, other: その他）カンマ区切りで連結
  ///
  /// * [String] open24Hours:
  ///   24時間営業か（true: 24時間営業, true以外：24時間営業ではない）
  ///
  /// * [String] advanceContacts:
  ///   事前連絡（necessary: 必要, unnecessary: 不要, unknown: 不明）カンマ区切りで連結
  ///
  /// * [String] parkingFeeTypes:
  ///   駐車料金（pay: 有料, conditional_free: 条件付き無料, free: 無料, unknown: 不明）カンマ区切りで連結
  Future<APIResponse?> chargerSpots(String X_EVENE_NATIVE_API_TOKEN, { String? userUuid, String? swLat, String? swLng, String? neLat, String? neLng, String? uuid, String? text, String? fields, String? deviceTypes, String? feeTypes, String? nowAvailable, String? styles, String? gogoevAuthenticationNetworks, String? categories, String? open24Hours, String? advanceContacts, String? parkingFeeTypes, }) async {
    final response = await chargerSpotsWithHttpInfo(X_EVENE_NATIVE_API_TOKEN,  userUuid: userUuid, swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng, uuid: uuid, text: text, fields: fields, deviceTypes: deviceTypes, feeTypes: feeTypes, nowAvailable: nowAvailable, styles: styles, gogoevAuthenticationNetworks: gogoevAuthenticationNetworks, categories: categories, open24Hours: open24Hours, advanceContacts: advanceContacts, parkingFeeTypes: parkingFeeTypes, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'APIResponse',) as APIResponse;
    
    }
    return null;
  }
}
