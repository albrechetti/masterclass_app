// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_widget_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppWidgetController on _AppWidgetControllerBase, Store {
  final _$isDarkModeAtom = Atom(name: '_AppWidgetControllerBase.isDarkMode');

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.reportRead();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.reportWrite(value, super.isDarkMode, () {
      super.isDarkMode = value;
    });
  }

  final _$_AppWidgetControllerBaseActionController =
      ActionController(name: '_AppWidgetControllerBase');

  @override
  dynamic toggleTheme() {
    final _$actionInfo = _$_AppWidgetControllerBaseActionController.startAction(
        name: '_AppWidgetControllerBase.toggleTheme');
    try {
      return super.toggleTheme();
    } finally {
      _$_AppWidgetControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkMode: ${isDarkMode}
    ''';
  }
}
