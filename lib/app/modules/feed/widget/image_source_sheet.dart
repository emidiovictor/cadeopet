import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceSheet extends StatelessWidget {
  final Function(File) onImageSelected;

  const ImageSourceSheet(this.onImageSelected);
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              child: Text("Camera"),
              onPressed: () async {
                final File image =
                    await ImagePicker.pickImage(source: ImageSource.camera);
                onImageSelected(image);
              },
            ),
            FlatButton(
              child: Text("Camera"),
              onPressed: () async {
                final File image =
                    await ImagePicker.pickImage(source: ImageSource.gallery);
                onImageSelected(image);
              },
            ),
          ],
        );
      },
      onClosing: () {},
    );
  }
}