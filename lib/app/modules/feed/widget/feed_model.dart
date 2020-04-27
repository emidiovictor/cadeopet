import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

class FeedModel {
  final DocumentReference reference;
  String nome;
  String localizacao;
  bool favorito = false;
  List<String> imgsUrl;
  String descricao;
  String urlFotoPerfil;
  List<File> fotos;

  addFoto(File file) {
    fotos.add(file);
  }

  bool hasFoto() {
    return fotos.length > 0;
  }

  FeedModel(
      {this.fotos,
      this.nome,
      this.descricao,
      this.favorito,
      this.imgsUrl,
      this.localizacao,
      this.reference,
      this.urlFotoPerfil}) {
    fotos = List<File>();
  }

  factory FeedModel.fromDocument(DocumentSnapshot doc) {
    return FeedModel(
        reference: doc.reference,
        urlFotoPerfil: doc['urlFotoPerfil'],
        nome: doc['nome'],
        localizacao: doc['localizacao'],
        favorito: doc['favorito'],
        imgsUrl: List.from(doc['imgsUrl']),
        descricao: doc['descricao']);
  }
}
