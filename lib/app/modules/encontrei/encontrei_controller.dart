import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part 'encontrei_controller.g.dart';

class EncontreiController = _EncontreiControllerBase with _$EncontreiController;

abstract class _EncontreiControllerBase with Store {
  @observable
  File imageFile;

  @action
  Future<void> pickImage(ImageSource source) async {
    imageFile = await ImagePicker.pickImage(source: source);
  }

  @action
  Future<void> cropImage() async {
    imageFile = await ImageCropper.cropImage(sourcePath: imageFile.path);
  }
}
