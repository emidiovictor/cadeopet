import 'package:cadeocao/app/modules/feed/feed_controller.dart';
import 'package:cadeocao/app/modules/feed/widget/feed_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Feed extends StatelessWidget {
  final FeedModel model;
  const Feed(this.model);

  @override
  Widget build(BuildContext context) {
    var carouselSlider = CarouselSlider.builder(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
      ),
      itemCount: model.imgsUrl.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Center(
              child:
                  Image.network(model.imgsUrl[index], fit: BoxFit.fitHeight)),
        );
      },
    );
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(model.nome),
            subtitle: Text(model.localizacao),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(model.urlFotoPerfil),
            ),
            trailing: Observer(builder: (_) {
              return InkWell(
                  child: Icon(
                Icons.favorite,
                color: Colors.red,
              ));
            }),
          ),
          Container(
            height: 250,
            child: carouselSlider,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              model.descricao,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('ENCONTREI'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: Text("Parabéns!!"),
                          content: Text(
                              "O dono deve estar ansioso para encontrar o seu petzinho!!"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () => Modular.to.pop('/'),
                              child: Text("Entrar em contato"),
                            ),
                            FlatButton(
                              onPressed: () => Modular.to.pop('/'),
                              child: Text("Escanear QR"),
                            )
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
