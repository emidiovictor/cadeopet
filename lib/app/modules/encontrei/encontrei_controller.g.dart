// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encontrei_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EncontreiController on _EncontreiControllerBase, Store {
  final _$imageFileAtom = Atom(name: '_EncontreiControllerBase.imageFile');

  @override
  File get imageFile {
    _$imageFileAtom.context.enforceReadPolicy(_$imageFileAtom);
    _$imageFileAtom.reportObserved();
    return super.imageFile;
  }

  @override
  set imageFile(File value) {
    _$imageFileAtom.context.conditionallyRunInAction(() {
      super.imageFile = value;
      _$imageFileAtom.reportChanged();
    }, _$imageFileAtom, name: '${_$imageFileAtom.name}_set');
  }

  final _$pickImageAsyncAction = AsyncAction('pickImage');

  @override
  Future<void> pickImage(ImageSource source) {
    return _$pickImageAsyncAction.run(() => super.pickImage(source));
  }

  final _$cropImageAsyncAction = AsyncAction('cropImage');

  @override
  Future<void> cropImage() {
    return _$cropImageAsyncAction.run(() => super.cropImage());
  }

  @override
  String toString() {
    final string = 'imageFile: ${imageFile.toString()}';
    return '{$string}';
  }
}
