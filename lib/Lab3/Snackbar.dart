import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar",
      home: MyStatelessWidget(),
    );
  }
}


class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("you pressed the button"),
            ),
            );
          }, child: Text("hello"),
          ),
        )

      );
  }
}
