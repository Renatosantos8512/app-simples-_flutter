import 'package:flutter/material.dart';
import 'package:khalticlone/model/conteudo.dart';
import 'package:khalticlone/provider/conteudos.dart';
import 'package:provider/provider.dart';
import 'package:khalticlone/componentes/conteudo_tile.dart';


class ConteudoForm extends StatelessWidget{

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

    void _loadFormData(Conteudo conteudo) {
      if (conteudo != null) {
        _formData['id'] = conteudo.id;
        _formData['titulo'] = conteudo.titulo;
        _formData['texto'] = conteudo.texto;
        _formData['imageUrl'] = conteudo.imageUrl;
      }
    }

  @override
  Widget build(BuildContext context){
    
   final Conteudo conteudo= ModalRoute.of(context).settings.arguments;

   _loadFormData(conteudo);

    return Scaffold(
     appBar: AppBar(
       title: Text('Conteúdos'),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.save),
           onPressed: (){

              final isValid= _form.currentState.validate();
               if(isValid){
                 _form.currentState.save();

                 Provider.of<ConteudosProvider>(context, listen: false).put(Conteudo(
                   id: _formData['id'],
                   titulo: _formData['titulo'],
                   texto: _formData['texto'],
                   imageUrl: _formData['imageUrl'],
                 ),);
                 Navigator.of(context).pop();
               }

            // }
           },
         )
       ],
       
       
     ) ,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _form,
          child: Column(

            children: <Widget>[
              TextFormField(

                initialValue: _formData['titulo'],
                decoration: InputDecoration(labelText: 'Titulo'),

                validator: (value){
                  if(value == null || value.trim().isEmpty){
                    return 'Nome Invalido';
                  }
                  if(value.trim().length < 3){
                    return 'Nome Pequeno. No minimo 3 letras';
                  }
                  return null;

                },

                onSaved: (value) =>_formData['titulo']=value,



              ),

              TextFormField(
                initialValue: _formData['texto'],

                decoration: InputDecoration(labelText: 'Texto'),

                onSaved: (value) =>_formData['texto']=value,
              ),


              TextFormField(
                initialValue: _formData['imageUrl'],
                decoration: InputDecoration(labelText: 'URL da Imagem'),
                onSaved: (value) =>_formData['imageUrl']=value,


              ),
            ],
          ),
        ),
      ),
    );
  }
}