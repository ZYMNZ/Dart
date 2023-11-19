import 'package:flutter/material.dart';
import 'quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade700,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}


class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [ //to check the score

  ];
  Brainquiz quizbrain = Brainquiz();

  void checkanswers(bool userpickedanswer) {
    bool correctanswer = quizbrain.getQuestionanswer();
    setState(() {
      if (quizbrain.isfinished() == true) {
        Alert(
            context: context,
            title: "Finished with the quiz!",
            desc: "You have completed all the task and well done"
        ).show();
        quizbrain.reset();
        scoreKeeper = [];
      }
      else if (userpickedanswer == correctanswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
      }
      else {
        print("you got a wrong answer");
        scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
      }
      quizbrain.checknextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                quizbrain.getQuestiontext(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),


        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: TextButton(
                child: Text("True", style: TextStyle(
                    color: Colors.green,
                    fontSize: 20
                )),
                onPressed: (){
                  checkanswers(true);
                  },
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: TextButton(
                child: Text("False", style: TextStyle(
                    color: Colors.red,
                    fontSize: 20
                )),
                onPressed: (){
                  checkanswers(false);
                  },
            ),
          ),
        ),

        Row(
          children: scoreKeeper,
        )

      ],
    );
  }
}

















