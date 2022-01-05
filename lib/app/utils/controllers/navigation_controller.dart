import 'package:flutter/material.dart';
import 'package:masterclass_app/app/utils/enum_pages.dart';

class NavigationController extends ValueNotifier<MyPages> {
  NavigationController() : super(MyPages.atividades);
  PageController pageController = PageController();
  
  int get pageIndex => pageController.page!.toInt();
  bool get atActivity => value == MyPages.atividades;
  bool get atRepository => value == MyPages.repositorio;
  bool get atAbout => value == MyPages.sobre;
 
  void setPageIndex(int index) {
    value = MyPages.values[index];
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
