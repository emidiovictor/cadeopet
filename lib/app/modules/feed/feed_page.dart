import 'package:cadeocao/app/modules/feed/widget/feed.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'feed_controller.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends ModularState<FeedPage, FeedController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Observer(builder: (_) {
        List<FeedModel> model = controller.feedList.data;

        return ListView.builder(
          itemCount: model.length,
          itemBuilder: (context, item) {
            return (Feed(model[item]));
          },
        );
      }),
    );
  }
}
