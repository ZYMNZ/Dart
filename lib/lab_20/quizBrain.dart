import 'question.dart';

class Brainquiz{
  int _questionno = 0;
 
  List<Question> _quesbank = [
    Question(q: "You can leas a cow down stairs but not up stairs", a: false),
    Question(q: "Berlin is the capital of Germany", a: true),
    Question(q: "No piece of square dry paper can be folded in half more than 7 times", a: false),
    Question(q: "A slug\'s blood is green", a: true),
    Question(q: "Google was originally called Backrup", a: true)
  ];

  void checknextQuestion(){
    if(_questionno < _quesbank.length -1){
      _questionno++;
      print(_questionno);
      print(_quesbank.length);
    }
  }

  String getQuestiontext(){
    return _quesbank[_questionno].questiontext;
  }

  bool getQuestionanswer(){
    return _quesbank[_questionno].questionanswer;

  }

  bool isfinished(){ // to check and reset the question set for the app
    if(_questionno >= _quesbank.length-1){
      print("now returning true");
      return true;
    }else{
      print("now returning false");
      return false;
    }
  }

  void reset(){
    _questionno = 0;
  }

}















