import 'package:flutter/material.dart';
import 'package:khalticlone/data/dummy_conteudos.dart';
import 'package:khalticlone/model/conteudo.dart';
import 'package:khalticlone/Random.dart';
import 'dart:math';

class ConteudosProvider with ChangeNotifier {

  final Map<String, Conteudo> _items = {...DUMMY_CONTEUDOS};
  List<Conteudo> get all{
    return[..._items.values];
  }

  int get count{
    return _items.length;
  }


  Conteudo byIndex(int i){
    return _items.values.elementAt(i);
  }

  //metodo put vai causar uma operação insere um elemento dentro de um map quando esse elemento não existe
// e ele altera um elemento baseado na chave
//todo vez que acessar o metodo put ele faz uma alteração
//
   void put (Conteudo conteudo) {
     //se o conteudo estiver vazio retornar nada
     if (conteudo == null) {
       return;
     }
     if (conteudo.id != null &&
         conteudo.id
             .trim()
             .isNotEmpty &&
         _items.containsKey(conteudo.id)) {
       _items.update(
         conteudo.id,
             (_) =>
             Conteudo(
               id: conteudo.id,
               titulo: conteudo.titulo,
               texto: conteudo.texto,
               imageUrl: conteudo.imageUrl,
             ),);
     }
     else {
       //adiconar
       //gerar o ID de forma randomica
       final id = Random().nextDouble().toString();
       _items.putIfAbsent(id, () =>
           Conteudo(
             id: id,
             titulo: conteudo.titulo,
             texto: conteudo.texto,
             imageUrl: conteudo.imageUrl,
           ),);
     }
     //caso contrario eu vou fazer a inclusão
     //adiconar
     //ou alterar um já existente

     //no final chamar um notificaçao para quer o provider seja notificado
     //e fazer a mudança na interface grafica
     notifyListeners();
   }
    void remove(Conteudo conteudo){
      if(conteudo != null && conteudo.id !=null){
        _items.remove(conteudo.id);
        notifyListeners();
      }
    }

}