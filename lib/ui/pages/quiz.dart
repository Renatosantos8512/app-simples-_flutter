import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:khalticlone/ui/pages_quiz/logica_quiz.dart';

QuizLogic quizLogic = new QuizLogic();

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text(
            'Quiz ',
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  final List<Widget> scoreKeeper = [];

  int totalCorrect = 0;
  int totalQuestions = 0;

  void checkAnswer(bool value) {
    if (quizLogic.getAnswer() == value) {
      print('Resposta Correts');
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      totalCorrect ++;
    } else {
      print('Resposta Errada');
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }
    totalQuestions++;
    if (quizLogic.isFinshed() == true) {
      Alert(
          context: context,
          title: 'Final do Quiz' ,


          desc: 'Você Acertou um Total de  $totalCorrect de $totalQuestions Questões!',
          buttons: [
            DialogButton(
                onPressed: () => Navigator.pop(context),

                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.white, fontSize: 22),

                )
            )
          ]
      ).show();
      quizLogic.reset();
      scoreKeeper.clear();
      totalCorrect = 0;
      totalQuestions = 0;
    }

     else {
      quizLogic.nextQuestion();
    }

  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.green[900],
                ),
                child: Center(
                  child: Text(
                    quizLogic.getQuestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                    ),
                  ),
                ),
              )
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)
                    ),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text(
                      'VERDADEIRO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        checkAnswer(true);
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)
                    ),
                    textColor: Colors.white,
                    color: Colors.red[900],
                    child: Text(
                      'FALS0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        checkAnswer(false);
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(child: Row(children: scoreKeeper,),)
      ],
    );
  }
}