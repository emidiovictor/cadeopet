// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  final _$feedListAtom = Atom(name: '_FeedControllerBase.feedList');

  @override
  ObservableStream<List<FeedModel>> get feedList {
    _$feedListAtom.context.enforceReadPolicy(_$feedListAtom);
    _$feedListAtom.reportObserved();
    return super.feedList;
  }

  @override
  set feedList(ObservableStream<List<FeedModel>> value) {
    _$feedListAtom.context.conditionallyRunInAction(() {
      super.feedList = value;
      _$feedListAtom.reportChanged();
    }, _$feedListAtom, name: '${_$feedListAtom.name}_set');
  }

  final _$_FeedControllerBaseActionController =
      ActionController(name: '_FeedControllerBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_FeedControllerBaseActionController.startAction();
    try {
      return super.getList();
    } finally {
      _$_FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'feedList: ${feedList.toString()}';
    return '{$string}';
  }
}
