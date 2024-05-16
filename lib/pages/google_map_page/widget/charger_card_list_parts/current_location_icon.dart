import 'package:flutter/material.dart';
import 'package:flutter_map_app/pages/google_map_page/provider/change_location_provider.dart';
import 'package:flutter_map_app/features/location/provider/fetch_current_location_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CurrentLocationIcon extends HookConsumerWidget {
  const CurrentLocationIcon({super.key});

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
                ref
                    .read(changeLocationProvider.notifier)
                    .toCurrentLocation();
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
