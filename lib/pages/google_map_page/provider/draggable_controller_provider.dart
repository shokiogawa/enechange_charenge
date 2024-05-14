import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'draggable_controller_provider.g.dart';

// 上下ドラッグで使用するController
@riverpod
DraggableScrollableController draggableController(DraggableControllerRef ref){
  return DraggableScrollableController();
}