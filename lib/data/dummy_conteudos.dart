// construir um map
import 'package:flutter/material.dart';
import 'package:khalticlone/model/conteudo.dart';

const DUMMY_CONTEUDOS= {
  '1': const Conteudo(
  id: '1',

  titulo:' DEPRESSÃO',
  texto:'A depressão é uma doença psiquiátrica grave que apresenta'
  ' sintomas recorrentes de tristeza profunda, baixa auto-estima e prostração',


  imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxK0fnmTy7MYvCJzXJFpEO4ph6cA5JT9GE0utu44BvghWjMR_H&usqp=CAU'

),


  '2': const Conteudo(
      id: '2',
      titulo:' ANSIEDADE',
      texto:'Ansiedade é um alerta do corpo que nos ajuda em novos desafios, mas atrapalha quando se torna rotina',
      imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQZE3QxRXPHJrlcjx00iM9e-B9YepG8xjQT9LgKXS486QM3jZhJ&usqp=CAU'
  ),



  '3': const Conteudo(
      id: '3',
      titulo:' Ansiedade Digital ',
      texto:' Quais são os sintomas de Ansiedade digital? Basicamente:um estado ansioso se tratando'
          'do mundo digital',
      imageUrl:'http://psiconefrologia.com/wp-content/uploads/2018/05/Ansiedade-digital-3-300x150.png'
  )


};