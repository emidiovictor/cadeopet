import 'package:cadeocao/app/modules/feed/feed_controller.dart';
import 'package:cadeocao/app/modules/feed/repositories/feed_repository.dart';
import 'package:cadeocao/app/modules/feed/repositories/feed_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cadeocao/app/modules/feed/feed_page.dart';

class FeedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FeedController(i.get<IFeedRepository>())),
        Bind<IFeedRepository>((i) => FeedRepository(Firestore.instance))
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => FeedPage()),
      ];

  static Inject get to => Inject<FeedModule>.of();
}
