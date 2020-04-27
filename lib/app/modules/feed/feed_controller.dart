import 'dart:io';

import 'package:cadeocao/app/modules/feed/repositories/feed_repository_interface.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';
import 'package:mobx/mobx.dart';

part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

abstract class _FeedControllerBase with Store {
  final IFeedRepository _repository;

  _FeedControllerBase(IFeedRepository this._repository) {
    this.getList();
  }
  @observable
  FeedModel feedModel = FeedModel();
  @observable
  ObservableStream<List<FeedModel>> feedList;

  @computed
  List<File> get images => feedModel.fotos;

  @observable
  ObservableList<File> fotos = ObservableList();

  @action
  addImage(File file) {
    fotos.add(file);
    feedModel = feedModel.copyWith(fotos: fotos);
  }

  @action
  getList() {
    feedList = _repository.getAllFeeds().asObservable();
  }
}
