// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageStore on _PageStoreBase, Store {
  final _$selectedPageAtom = Atom(name: '_PageStoreBase.selectedPage');

  @override
  int get selectedPage {
    _$selectedPageAtom.context.enforceReadPolicy(_$selectedPageAtom);
    _$selectedPageAtom.reportObserved();
    return super.selectedPage;
  }

  @override
  set selectedPage(int value) {
    _$selectedPageAtom.context.conditionallyRunInAction(() {
      super.selectedPage = value;
      _$selectedPageAtom.reportChanged();
    }, _$selectedPageAtom, name: '${_$selectedPageAtom.name}_set');
  }

  final _$_PageStoreBaseActionController =
      ActionController(name: '_PageStoreBase');

  @override
  dynamic setSelectedPage(int value) {
    final _$actionInfo = _$_PageStoreBaseActionController.startAction();
    try {
      return super.setSelectedPage(value);
    } finally {
      _$_PageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'selectedPage: ${selectedPage.toString()}';
    return '{$string}';
  }
}
