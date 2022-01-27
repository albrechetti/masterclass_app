import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HideBottomBar extends ValueNotifier<bool> implements Disposable {
  final ScrollController scrollController = ScrollController();
  //final ValueNotifier<bool> visible = ValueNotifier<bool>(false);

  HideBottomBar() : super(true) {
    //visible.value = true;
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (value) {
          value = false;
        }
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!value) {
          value = true;
        }
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
    dispose();
  }
}
