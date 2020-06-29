import 'questoes.dart';

class QuizLogic {

  int _questionNumber = 0;

  List<Question> _questions = [
    Question('Flamengo foi campeão da libertadores 2019', true),
    Question('Flamengo tem 3 campeonato Brasileiro', true),
    Question('Flamengo ganhou o Mundial 2019', false),
    Question('Gabriel Barboda é atacante do Flamengo', true),
    Question('Gabriel Barbosa é conhecido como Gabigol', true),
    Question('Flamengo é um time do estado do São Paulo', false),
    Question('Flamengo é mehor do que o Vasco', true),
    Question('Nova Iguaçu é capital do estado do Rio de janeiro', false),
    Question('Jorge Jesus é o tecnico do Flamengo', true),
    Question('Goiania é a Capital do Brasil', false),
    Question('Laravel é um FrameWork PHP', true),
    Question('Pyton é um Framework', false),
    Question('Java é uma Linguagem de Programação', true),
    Question('MySQL é um servidor de Banco de Dados', true),
  ];

  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1 ) {
      return true;
    } else {
      return false;
    }
  }

  int printQuestionNumber() {
    print(_questionNumber);
  }

  int printQuestionsLength() {
    print(_questions.length);
  }

  void reset() {
    _questionNumber = 0;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

}