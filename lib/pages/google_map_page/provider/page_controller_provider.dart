import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_controller_provider.g.dart';

// 上下ドラッグで使用するController
@riverpod
PageController pageController(PageControllerRef ref){
  return PageController(viewportFraction: 0.85);
}