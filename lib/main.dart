import 'package:flutter/material.dart';
import 'package:khalticlone/res/colors.dart';
import 'package:khalticlone/ui/pages/auth/login.dart';
import 'package:khalticlone/ui/pages/auth/recover.dart';
import 'package:khalticlone/ui/pages/auth/register.dart';
import 'package:khalticlone/ui/pages/home.dart';
import 'package:khalticlone/ui/pages/intro.dart';
import 'package:khalticlone/ui/pages/payment.dart';
import 'package:khalticlone/ui/widgets/slide_right_route.dart';
import 'package:khalticlone/provider/conteudos.dart';
import 'package:provider/provider.dart';
import 'package:khalticlone/routes/app_routes.dart';
import 'package:khalticlone/ui/pages/conteudo_form.dart';
import 'package:khalticlone/ui/pages_quiz/logica_quiz.dart';
import 'package:khalticlone/ui/pages/quiz.dart';

void main(){  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(ctx) => ConteudosProvider(),
      child: MaterialApp(
      title: 'Khalti',
      debugShowCheckedModeBanner: false,
      color: primary,
      theme: ThemeData(primaryColor: primary, accentColor: accent),
      routes: {
        "/": (_) => IntroPage(),
        "home": (_) => HomePage(),
        "payment": (_) => Payment(),
        AppRoutes.CONTEUDO_FORM:(_)=>ConteudoForm()
      },
      onGenerateRoute: (RouteSettings settings) {
        switch(settings.name) {
          case "login":
            return SlideRightRoute(widget: LoginPage());
            break;
          case "recover":
            return SlideRightRoute(widget: RecoverPasswordPage());
            break;
          case "register":
            return SlideRightRoute(widget: RegisterPage());
            break;
          case "quiz":
            return SlideRightRoute(widget: QuizApp());
            break;
          default:
            return null;
        }
      },
    ),
    );
  }
}
