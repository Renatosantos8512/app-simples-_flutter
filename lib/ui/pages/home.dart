import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khalticlone/model/home_menu_item.dart';
import 'package:khalticlone/res/constants.dart';
import 'package:khalticlone/res/typography.dart';
import 'package:khalticlone/ui/pages/menu_page.dart';
import 'package:khalticlone/ui/widgets/bottom_expandable_app_bar/bottom_expandable_app_bar.dart';
import 'package:khalticlone/ui/widgets/bottom_expandable_app_bar/controller.dart';
import 'package:khalticlone/model/conteudo.dart';
import 'package:khalticlone/componentes/conteudo_tile.dart';
import 'package:khalticlone/data/dummy_conteudos.dart';
import 'package:provider/provider.dart';
import 'package:khalticlone/provider/conteudos.dart';
import 'package:khalticlone/routes/app_routes.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  BottomBarController controller;

  @override
    void initState() {
      super.initState();
      controller = BottomBarController(vsync: this, dragLength: 550, snap: true);
    }

  @override
  Widget build(BuildContext context){

      final ConteudosProvider conteudo= Provider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('HELP'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
            iconSize: 35,
            color: Colors.white,
            onPressed: (){
             Navigator.of(context).pushNamed(AppRoutes.CONTEUDO_FORM);


            },
        ),
      ],

      ),



     body:ListView.builder( itemCount:conteudo.count ,itemBuilder:(ctx,i)=>ConteudoTile(conteudo.byIndex(i)) ),




      bottomNavigationBar: GestureDetector(
        onVerticalDragUpdate: controller.onDrag,
        onVerticalDragEnd: controller.onDragEnd,
        child: _buildBottomBar(context),

      ),

    );

  }






  BottomExpandableAppBar _buildBottomBar(BuildContext context) {
    return BottomExpandableAppBar(
      attachSide: Side.Top,
      controller: controller,
      expandedHeight: MediaQuery.of(context).size.height - 75,
      horizontalMargin: 0,
      appBarHeight: 70,
      bottomOffset: 0,
      expandedBackColor: Colors.white,
      expandedBody: MenuPage(),
      bottomAppBarColor: Colors.grey.shade200,
      bottomAppBarBody: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: _buildBottomMenuItem(
              icon: Icon(Icons.home,size: 30.0,),

              label: "INICIO",
              onTap: (){}
            ),
          ),
          Expanded(
            child: _buildBottomMenuItem(
              icon: Icon(Icons.insert_emoticon,size: 30.0,),
              label: "Humor",
              onTap: (){}
            ),
          ),
          Expanded(
            child: _buildBottomMenuItem(
              icon: Icon(Icons.videogame_asset,size: 30.0,),
              label: "QUIZ ",
              onTap: () {
                Navigator.pushNamed(context, 'quiz');
              },
            ),
          ),
          Expanded(
            child: _buildBottomMenuItem(
              icon: Icon(Icons.person,size: 30.0,),
              label: "PERFIL",

              onTap: () => controller.open(),

            ),
          ),
        ],
      ),
    );
  }

  MaterialButton _buildBottomMenuItem({Widget icon, String label, Function onTap}) {
    return MaterialButton(
      height: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          Text(label, style: TextStyle(
            fontSize: 15
          ),)
        ],
      ),
      onPressed: onTap,
    );
  }








  Widget _buildMenuItem({IconData icon, String label, String subtitle}) {
    return InkWell(
      onTap: (){},
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon,size: 28, color: Colors.green[900],),
              const SizedBox(height: 10.0),
              Text(label, style: smallText,),
              if(subtitle != null)
              const SizedBox(height: 5.0),
              if(subtitle != null)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0,),
                color: Colors.grey.shade200,
                child: Text(subtitle, textAlign: TextAlign.center, style: smallText.copyWith(
                  fontSize: 8.0
                ),)
              )
            ],
          ),
    );
  }

}