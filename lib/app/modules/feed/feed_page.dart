import 'package:cadeocao/app/modules/feed/widget/feed.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';
import 'package:cadeocao/app/modules/feed/widget/publicacao/criar_publicao.dart';
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
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/create");
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://scontent-gig2-1.xx.fbcdn.net/v/t1.0-9/993000_586097978088827_20490086_n.jpg?_nc_cat=106&_nc_sid=7aed08&_nc_eui2=AeHXFu5rndRmKMpBV3kfl9sHUT1-sISEpQpRPX6whISlCqWbToMSFn3WhkWa9ki3UYVOvcjpFVOjIVTuvradA2Nc&_nc_ohc=zuth8ift6LcAX90d78t&_nc_ht=scontent-gig2-1.xx&oh=da19e2a03144b105ef70212e8c85f60d&oe=5EC8D650"),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Center(
                                child: Text("Achou um pet? Publique aqui!")),
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: Colors.grey[600])),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Observer(builder: (_) {
              if (controller.feedList.hasError) {
                return Center(
                  child: RaisedButton(
                    onPressed: controller.getList(),
                    child: Text("Ocorreu um erro!"),
                  ),
                );
              }
              if (controller.feedList.data == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              List<FeedModel> model = controller.feedList.data;

              return ListView.builder(
                itemCount: model.length,
                itemBuilder: (context, item) {
                  return (Feed(model[item]));
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
