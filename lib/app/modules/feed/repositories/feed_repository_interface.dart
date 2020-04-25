import 'package:cadeocao/app/modules/feed/widget/feed.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';

abstract class IFeedRepository {
  Stream<List<FeedModel>> getAllFeeds();
}
