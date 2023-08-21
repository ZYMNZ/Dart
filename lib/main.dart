import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = "click me";

  // when you use the statefulwidget, it is a good practice to call setState method
  void changeText(){
    setState(() {
      buttonText = "this is amazing";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Clicking a Button"),),
        body: Center(
          child: Column(
            // alignment of the button (where to place it)
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(buttonText),
              // this is the 'button'
              SizedBox(height: 20,),
              // this is the event handler
              ElevatedButton(onPressed: changeText, child: Text("change Text"))
            ],
          ),
        ),
      ),
    );
  }
}



/*
class MyApp extends StatelessWidget {
   MyApp({super.key});

  final List<String> items = ["friends", "Families", "colleagues", "buddies"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Display the list"),),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
*/


/*

//Stateless: stateless widget doesnt change
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //widget is like building blocks

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar is the top bar
        appBar: AppBar(title: Text("Text Display"),),
        body: Center(
          // Image.network takes a source of any img
          child: Image.network("https://hips.hearstapps.com/hmg-prod/images/russian-blue-royalty-free-image-1658451809.jpg?resize=1200:*") ,//Text("Hello World"),
        ),
      )
    );
  }
}

 */

