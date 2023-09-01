import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();


}


class _MyAppState extends State<MyApp> {

  int count = 0;
  void addCounter(){
    setState(() {
      count++;
    });
  }
  void subCounter(){
    setState(() {
      count--;
    });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Counter"),),
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () => subCounter(),
                child: Icon(Icons.remove),
              ),
              Text("${count}"),
              FloatingActionButton(
                onPressed: () => addCounter(),
                child: Icon(Icons.add),
              )
            ],
          ),
        )
      ),
    );
  }
}


