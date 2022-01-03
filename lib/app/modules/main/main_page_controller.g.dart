// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainPageController on _MainPageControllerBase, Store {
  final _$selectedIndexAtom =
      Atom(name: '_MainPageControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$pageTitleAtom = Atom(name: '_MainPageControllerBase.pageTitle');

  @override
  String get pageTitle {
    _$pageTitleAtom.reportRead();
    return super.pageTitle;
  }

  @override
  set pageTitle(String value) {
    _$pageTitleAtom.reportWrite(value, super.pageTitle, () {
      super.pageTitle = value;
    });
  }

  final _$_MainPageControllerBaseActionController =
      ActionController(name: '_MainPageControllerBase');

  @override
  dynamic changePage(dynamic index) {
    final _$actionInfo = _$_MainPageControllerBaseActionController.startAction(
        name: '_MainPageControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_MainPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePageTitle(dynamic index) {
    final _$actionInfo = _$_MainPageControllerBaseActionController.startAction(
        name: '_MainPageControllerBase.changePageTitle');
    try {
      return super.changePageTitle(index);
    } finally {
      _$_MainPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
pageTitle: ${pageTitle}
    ''';
  }
}
