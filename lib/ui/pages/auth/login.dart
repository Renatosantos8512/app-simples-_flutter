import 'package:flutter/material.dart';
import 'package:khalticlone/res/colors.dart';
import 'package:khalticlone/res/constants.dart';
import 'package:khalticlone/res/typography.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBg,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
            top: 10, left: 16.0, right: 16.0, bottom: 10.0),
        child: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 70),
              padding:
                  const EdgeInsets.only(top: 80.0, left: 16.0, right: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.perm_contact_calendar),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: TextField(
                            decoration:
                                InputDecoration(hintText: "E-mail"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.lock),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Senha",
                                suffixIcon: GestureDetector(
                                  child: Icon(Icons.remove_red_eye),
                                  onTap: () {},
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      width:double.infinity,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text("ENTRAR".toUpperCase()),
                        onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
                      )
                    ),
                    const SizedBox(height: 20.0),
                    GestureDetector(
                      child: Text(
                        "ESQUECEU A SENHA".toUpperCase(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, 'Recuperar Senha');
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                          color: Colors.grey.shade600,
                        )),
                        const SizedBox(width: 10.0),
                       Text("Não è Membro ?",
                       style: TextStyle(fontSize: 15)),
                        const SizedBox(width: 20.0),
                        Expanded(
                            child: Divider(
                          color: Colors.grey.shade600,
                        )),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    GestureDetector(
                      child: Text(
                        "Criar Conta".toUpperCase(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, 'register');
                      },
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                height: 100,
                child: Image.asset(
                  logo,
                  fit: BoxFit.contain,
                )),
          ],
        ),
      ),
    );
  }
}
