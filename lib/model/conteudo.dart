

import 'package:flutter/material.dart';
class Conteudo{

  final String id;
  final String titulo;
  final String texto;
  final String imageUrl;

  //criação de  um contrutor
// colocar um rrequired menos pro id
const Conteudo({

   this.id,
   @required this.titulo,
   @required this.texto,
   @required this.imageUrl,




});
}