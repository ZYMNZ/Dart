import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
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
      appBar: AppBar(
        title: Text("Alert Dialog Demo"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _showmyDialog();
          },
          child: Text("Confirm"),
        ),
      ),
    );
  }

  Future<void> _showmyDialog() async{
    return showDialog <void>(context: context,
      barrierDismissible: false, // user must tap button
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Vanier bill 96 strike alert"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text("this is the reminder for the strike to be attended"),
                Text("Would you willing to participate ?"),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: (){
              print("Yes I am attending");
              Navigator.of(context).pop();
            }, child: Text("Please Confirm")),

            TextButton(onPressed: (){
              print("No I am not attending");
              Navigator.of(context).pop();
            }, child: Text("Cancel")),
          ],
        );
      }
    );

  }
}





