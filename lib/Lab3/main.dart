import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = "Flutter Demonstration";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        actions: [
          IconButton(
          icon: Icon(Icons.add_alert),
              onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("you pressed the bell button"))
            );
          },
          )
        ],
      ),
      body: Center(
        child: Text(
            "Hello World",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


////////////////////////////////////////////

