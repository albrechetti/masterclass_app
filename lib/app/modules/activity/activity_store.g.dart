// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ActivityStore on _ActivityStoreBase, Store {
  final _$titleAtom = Atom(name: '_ActivityStoreBase.title');

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$_ActivityStoreBaseActionController =
      ActionController(name: '_ActivityStoreBase');

  @override
  Widget checkActivity(dynamic context) {
    final _$actionInfo = _$_ActivityStoreBaseActionController.startAction(
        name: '_ActivityStoreBase.checkActivity');
    try {
      return super.checkActivity(context);
    } finally {
      _$_ActivityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title}
    ''';
  }
}
