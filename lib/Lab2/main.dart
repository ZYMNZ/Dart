import 'package:flutter/material.dart';

//starting point of the application
void main() {
  runApp(MyApp());
}

// runapp method calling the class MyApp
// class MyApp is building the materialApp which is the root of all flutter widget
// this class initiates the other class MyStatelessWidget that will build the scaffold
class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String_title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: String_title,
      home: MyStatelessWidget(),
    );
  }
}

// this class designs the widget Scaffold, that uer design in the main screen(body of the device)
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Revisiting Flutter"),
//       ),
//       body: Center(
//         child: Text(
//           "Welcome Back",
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//     );
//   }
// }
////////////////////////////////////////////////////////
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Revisiting Flutter"),
//       ),
//       body: Center(
//       child:Column(//Row(
//         children: [
//           Text("Umbrella", style: TextStyle(fontSize: 24),),
//           Icon(Icons.beach_access,
//             color: Colors.amber,
//             size: 90,
//           ),
//           Text("Audio", style: TextStyle(fontSize: 34),),
//           Icon(Icons.audiotrack,
//             color: Colors.green,
//             size: 90),
//         ]
//       ),
//     ),
//     );
//   }
// }
///////////////////////////////////////////////
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Revisiting Flutter"),
      ),
      body: Center(
        child: Column(//Row(
            children: [
          SizedBox(
            height: 90,
          ),
          Container(
            height: 150,
            width: 200,
            color: Colors.deepOrange,
            alignment: Alignment.center,
            child: Text("Hey Container"),
          )
        ]),
      ),
    );
  }
}
