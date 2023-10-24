import 'package:flutter/material.dart';
import 'package:fifteenth_flutter_project/add_Students.dart';
import 'package:fifteenth_flutter_project/list_Student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SqFlite crud example"),),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return AddStudent(); // this is the class we call from add_students.dart
                  },)
              );

            }, child: Text("Add Student"),),

            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayStudents(); // this is the class we call from list_students.dart
                  },)
              );

            }, child: Text("List Student"),),

          ],
        ),
      ),
    );
  }
}
