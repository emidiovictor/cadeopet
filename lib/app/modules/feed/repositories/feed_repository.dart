import 'package:cadeocao/app/modules/feed/repositories/feed_repository_interface.dart';
import 'package:cadeocao/app/modules/feed/widget/feed.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FeedRepository implements IFeedRepository {
  final Firestore firestore;

  FeedRepository(this.firestore);

  @override
  Stream<List<FeedModel>> getAllFeeds()  {
    return  firestore.collection('feeds').snapshots().map((query) {
      return query.documents.map((doc) {
        return FeedModel.fromDocument(doc);
      }).toList();
    });
  }
}
