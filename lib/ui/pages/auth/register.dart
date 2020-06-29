import 'package:flutter/material.dart';
import 'package:khalticlone/res/colors.dart';
import 'package:khalticlone/res/typography.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainBg,
      body: Container(
        margin: const EdgeInsets.fromLTRB(16.0,40.0,16.0,16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.white
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Text(" Nome Completo", style: smallText,),
              Text("Nome Completo",
                  style: TextStyle(fontSize: 20)),
              _buildTextField(),
              const SizedBox(height: 20.0),
              //Text("Numero Celular (Optional)", TextStyle(fontSize: 30)),
              Text("Numero Celular (Optional)",
              style: TextStyle(fontSize: 20)),
              _buildTextField(),
              const SizedBox(height: 20.0),
             // Text("E-Mail )", style: smallText,),
              Text("E-Mail",
                  style: TextStyle(fontSize: 20)),
              _buildTextField(),
              const SizedBox(height: 20.0),




              const SizedBox(height: 10.0),

              //Text("Senha", style: smallText,),

              Text("Senha",
                  style: TextStyle(fontSize: 20)),
              _buildTextField(obscureText: true),
              const SizedBox(height: 20.0),
             // Text("Confirmar Senha", style: smallText,),

              Text("Confirmar Senha",
                  style: TextStyle(fontSize: 20)),
              _buildTextField(obscureText: true),
              const SizedBox(height: 20.0),


              SizedBox(
                width:double.infinity,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text("Inscrever - Se".toUpperCase()),
                  onPressed: (){},
                )
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Expanded(child: Divider(color: Colors.grey.shade600,)),
                  const SizedBox(width: 10.0),
                  //Text("Já Tem Uma Conta?",style: smallText,),
                  Text("Já Tem uma Conta?",
                      style: TextStyle(fontSize: 17)),
                  const SizedBox(width: 10.0),
                  Expanded(child: Divider(color: Colors.grey.shade600,)),
                ],
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                child: SizedBox(
                  width: double.infinity,
                  child: Text("Login".toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                onTap: ()=>Navigator.pushNamedAndRemoveUntil(context,'login',(Route<dynamic> route) => false),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField({bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
    );
  }
}