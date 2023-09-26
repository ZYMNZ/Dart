import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Score());
}


class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Your Result",style: TextStyle(
              fontSize: 40
          )),
            backgroundColor: Colors.black,
          ),
          body: Result(),
        )

    );
  }
}

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String value = "Overweight";
  double _random = 0.0;

  double get random => _random;

  void randomNumber(){
    setState(() {
       _random =  Random().nextDouble() * 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: Text(value,style: TextStyle(
                color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20
            )),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text(random.toStringAsFixed(1),
              style: TextStyle(
              color: Colors.white,
              fontSize: 90
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 60,bottom: 35),
            alignment: Alignment.center,
            child: Text("You have a this amount of body",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            )),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            margin: EdgeInsets.only(top: 200),
            child: ElevatedButton(onPressed: () => randomNumber(),
                child: Text("RE-Calculate", style: TextStyle(
                  color: Colors.white
                ),
                ),
            ) ,
          )
        ],
      ),
    );
  }
}
