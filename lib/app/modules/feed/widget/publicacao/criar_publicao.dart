import 'package:cadeocao/app/modules/feed/feed_controller.dart';
import 'package:cadeocao/app/modules/feed/widget/feed.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../image_source_sheet.dart';

class CriarPublicacao extends StatelessWidget {
  FeedController controller = Modular.get<FeedController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Criar publicação"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 140,
              color: Colors.grey[300],
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: controller.feedModel.hasFoto()
                          ? buildPic(context, controller.feedModel)
                          : buildAddPicture(context, controller.feedModel),
                    );
                  }),
            )
          ],
        ));
  }

  Widget buildAddPicture(BuildContext context, FeedModel feedModel) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => ImageSourceSheet((file) {
                  feedModel.addFoto(file);
                }));
      },
      child: CircleAvatar(
        backgroundColor: Colors.grey[400],
        radius: 52,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.dog,
              size: 50,
              color: Colors.white,
            ),
            Text(
              "Foto",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget buildPic(BuildContext context, FeedModel feedModel) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => ImageSourceSheet((file) {
                  feedModel.addFoto(file);
                }));
      },
      child: CircleAvatar(
        backgroundColor: Colors.grey[400],
        radius: 52,
        child: Observer(builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.file(feedModel.fotos[0]),
              Text(
                "Foto",
                style: TextStyle(color: Colors.white),
              )
            ],
          );
        }),
      ),
    );
  }
}
