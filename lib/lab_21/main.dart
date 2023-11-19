import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 20;

  void increaseFontSize() {
    setState(() {
      _fontSize = 50;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Manual animamted"),
          ),
          body: ListView(
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Hello, this will zoom",
                      style: TextStyle(
                          fontSize: _fontSize
                      ),
                    )
                ),
                ElevatedButton(
                    onPressed: () {
                      increaseFontSize();
                    },
                    child: Text(
                      "Zoom in",
                    ))
              ]
          )
      ),

    );
  }
}
