import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

class FeedModel {
  final DocumentReference reference;
  final String nome;
  final String localizacao;
  final bool favorito;
  final List<String> imgsUrl;
  final String descricao;
  final String urlFotoPerfil;
  final ObservableList<File> fotos;

  copyWith(
      {ObservableList<File> fotos,
      String nome,
      String descricao,
      bool favorito = false,
      ObservableList<String> imgsUrl,
      String localizacao,
      String urlFotoPerfil}) {
    return FeedModel(
        fotos: fotos ?? this.fotos,
        descricao: descricao ?? this.descricao,
        nome: nome ?? this.nome,
        favorito: favorito ?? this.favorito,
        imgsUrl: imgsUrl ?? this.imgsUrl,
        localizacao: localizacao ?? this.localizacao,
        urlFotoPerfil: urlFotoPerfil ?? this.urlFotoPerfil);
  }

  FeedModel(
      {this.fotos,
      this.nome,
      this.descricao,
      this.favorito = false,
      this.imgsUrl,
      this.localizacao,
      this.reference,
      this.urlFotoPerfil});

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
