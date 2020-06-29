import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khalticlone/res/constants.dart';

class MenuPage extends StatelessWidget  {
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          Container(
            margin: const EdgeInsets.only(top: 80),
            height: 120,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  onTap: (){},
                  leading: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.green[900],

                      child: Icon(Icons.person,size: 40.0,)
                      ),

                    ],
                  ),
                  title: Text("Renato",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),),
                  subtitle: Text("(63)9271-6860", style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white
                  ),),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white,),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 75.0),
                  child: Text.rich(TextSpan(

                  ), style: TextStyle(color: Colors.white),),
                ),

              ],
            ),
          ),



          ListTile(title: Text("Meu Humor"), leading: Icon(Icons.insert_emoticon,size: 35.0),),

          Divider(),
          ListTile(title: Text("Meus Quiz"), leading: Icon(FontAwesomeIcons.gamepad,size: 35.0),),
          ListTile(title: Text("Help Ranking"), leading: Icon(FontAwesomeIcons.coins,size: 35.0),),
          Divider(),
          ListTile(title: Text("Configuração"), leading: Icon(Icons.settings,size: 35.0),),
          ExpansionTile(
            backgroundColor: Colors.grey.shade100,
            title: Text("Help & Suporte"),
            leading: Icon(Icons.headset_mic,size: 35.0),
            children: <Widget>[
              ListTile(title: Text("FAQ"),),
              ListTile(title: Text("Contate-Nos"),),
              ListTile(title: Text("Feedback"),),
            ],
          ),

          ListTile(title: Text("Logout",), leading: Icon(Icons.exit_to_app,size: 35.0),),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0,),
            color: Colors.grey.shade200,
            child: Text("Help Versão 2020"),

          )
        ],
      ),
    );
  }
}