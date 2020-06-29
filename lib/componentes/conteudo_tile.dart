import 'package:flutter/material.dart';
import 'package:khalticlone/model/conteudo.dart';
import 'package:khalticlone/routes/app_routes.dart';
import 'package:khalticlone/provider/conteudos.dart';
import 'package:provider/provider.dart';

class ConteudoTile extends StatelessWidget{

  final Conteudo conteudo;

  const  ConteudoTile(this.conteudo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final image= conteudo.imageUrl == null || conteudo.imageUrl.isEmpty?
    CircleAvatar(child: Icon(Icons.person)):CircleAvatar(backgroundImage: NetworkImage(conteudo.imageUrl) );
    return ListTile(

      leading: image,
      title: Text(conteudo.titulo),
      subtitle: Text(conteudo.texto),

      trailing: Container(
        width: 100,

        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.green,
              onPressed: (){
                Navigator.of(context).pushNamed(AppRoutes.CONTEUDO_FORM,
                    arguments: conteudo);

              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: (){

                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Postagem'),
                    content: Text('Tem Certeza ??'),
                    actions: <Widget>[
                      FlatButton(
                        child:Text('Não'),

                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child:Text('Sim'),
                        onPressed: (){
                          Provider.of<ConteudosProvider>(context, listen: false).
                          remove(conteudo);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),

                );



              },
            ),
          ],
        ) ,
      ),
    );
  }
}