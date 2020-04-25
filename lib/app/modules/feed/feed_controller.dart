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
  ObservableStream<List<FeedModel>> feedList;

  @action
  getList() {
    feedList = _repository.getAllFeeds().asObservable();
  }
}
