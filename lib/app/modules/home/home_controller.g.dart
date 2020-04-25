// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$selectedPageAtom = Atom(name: '_HomeControllerBase.selectedPage');

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

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setSelectedPage(int value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setSelectedPage(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'selectedPage: ${selectedPage.toString()}';
    return '{$string}';
  }
}
