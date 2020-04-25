import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'encontrei_controller.dart';

class EncontreiPage extends StatefulWidget {
  final String title;
  const EncontreiPage({Key key, this.title = "Encontrei"}) : super(key: key);

  @override
  _EncontreiPageState createState() => _EncontreiPageState();
}

class _EncontreiPageState
    extends ModularState<EncontreiPage, EncontreiController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.photo_camera,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () {
                controller.pickImage(ImageSource.camera);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.camera,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () {
                controller.pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
