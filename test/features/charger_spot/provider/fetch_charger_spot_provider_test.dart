import 'package:flutter_map_app/features/charger_spot/repository/charger_spots_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/api.dart';

void main() {
  group('fetch_charger_spot_provider Test', () {
    // TODO: Mockitoなどでテストをする。
    test("テストの準備 テンプレート作成", () async {
      // コンテナ作成
      final container = ProviderContainer(overrides: [
        chargerSpotRepositoryProvider
            .overrideWithValue(MockChargerSpotsRepository())
      ]);

      final data = await container
          .read(chargerSpotRepositoryProvider)
          .getChargerSpots(swLat: '', swLng: '', neLat: '', neLng: '');
      expect(data?.status, APIResponseStatusEnum.ok);
    });
  });
}

class MockChargerSpotsRepository implements ChargerSpotsRepository {
  @override
  Future<APIResponse?> getChargerSpots(
      {required String swLat,
      required String swLng,
      required String neLat,
      required String neLng}) async {
    return APIResponse(status: APIResponseStatusEnum.ok);
  }

  @override
  // TODO: implement ref
  Ref<Object?> get ref => throw UnimplementedError();
}
