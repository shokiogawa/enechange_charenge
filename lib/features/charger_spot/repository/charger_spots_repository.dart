import 'package:flutter_map_app/configuration.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'charger_spots_repository.g.dart';

@riverpod
ChargerSpotsRepository chargerSpotRepository(ChargerSpotRepositoryRef ref){
  return ChargerSpotsRepository(ref);
}

class ChargerSpotsRepository {

  final Ref ref;
  ChargerSpotsRepository(this.ref);

  Future<APIResponse?> getChargerSpots({
    required String swLat,
    required String swLng,
    required String neLat,
    required String neLng,
  }) async {
    // キーは直接コミットしないようお願いします
    final APIResponse? result = await ChargerSpotsApi().chargerSpots(
      Configuration.apiKey,
      swLat: swLat,
      swLng: swLng,
      neLat: neLat,
      neLng: neLng,
    );
    return result;
  }
}
