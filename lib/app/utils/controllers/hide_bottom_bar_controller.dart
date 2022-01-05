import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideBottomBar {
  final ScrollController scrollController = ScrollController();

  final ValueNotifier<bool> visible = ValueNotifier<bool>(true);

  HideBottomBar() {
    visible.value = true;
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (visible.value) {
          visible.value = false;
        }
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!visible.value) {
          visible.value = true;
        }
      }
    });
  }
  void dispose() {
    scrollController.dispose();
    visible.dispose();
  }
}
