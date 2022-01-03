import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'main_page_controller.g.dart';

class MainPageController = _MainPageControllerBase with _$MainPageController;

abstract class _MainPageControllerBase with Store implements Disposable {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @observable
  int selectedIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
  }

  @observable
  String pageTitle = 'Atividades';

  @action
  changePage(index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    selectedIndex = index;
    changePage(index);
  }

  @action
  changePageTitle(index) {
    switch (index) {
      case 0:
        pageTitle = 'Atividades';
        break;
      case 1:
        pageTitle = 'Repositório';
        break;
      case 2:
        pageTitle = 'Sobre';
        break;
    }
  }
}
