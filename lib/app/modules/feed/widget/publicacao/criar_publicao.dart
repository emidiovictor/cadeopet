import 'package:cadeocao/app/modules/feed/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../image_source_sheet.dart';

class CriarPublicacao extends StatelessWidget {
  Geoflutterfire geo = Geoflutterfire();
  Location location = new Location();
  GoogleMapController mapController;
  FeedController controller = Modular.get<FeedController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Criar publicação"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 140,
              color: Colors.grey[300],
              child: Observer(builder: (_) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.fotos.length + 1,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Observer(builder: (_) {
                            if (controller.fotos.length == index) {
                              return buildAddPicture(
                                  context, controller, index);
                            }
                            return buildPic(context, controller, index);
                          }));
                    });
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 5,
                maxLength: 256,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Conte aqui como é o pet!',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                child: GoogleMap(
                  onMapCreated: (GoogleMapController controller) async {
                    _animateToUser(controller);
                  },
                  initialCameraPosition: CameraPosition(
                      target: LatLng(-21.5415643, -43.0157053), zoom: 17),
                ),
              ),
            )
          ],
        ));
  }

  _animateToUser(GoogleMapController controller) async {
    var pos = await location.getLocation();
    mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(pos.latitude, pos.longitude), zoom: 17)));
  }

  Widget buildAddPicture(
      BuildContext context, FeedController controller, int index) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => ImageSourceSheet((file) {
                  if (file != null) {
                    controller.addImage(file);
                  }
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

  Widget buildPic(BuildContext context, FeedController controller, int index) {
    return GestureDetector(
        child: CircleAvatar(
            backgroundImage: FileImage(controller.fotos[index]),
            backgroundColor: Colors.grey[400],
            radius: 52));
  }
}
