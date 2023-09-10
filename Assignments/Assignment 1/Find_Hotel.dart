import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        body: Main(),
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Check in/Check out",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              padding: EdgeInsets.all(18),
              child: Center(
                child: Text(
                  "Tonight",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Intract(),
          ],
        ),
      ),
    );
  }
}

class Intract extends StatefulWidget {
  const Intract({super.key});

  @override
  State<Intract> createState() => _IntractState();
}

class _IntractState extends State<Intract> {
  int adult = 0;
  int children = 0;

  @override
  void addAdult() {
    setState(() {
      adult++;
    });
  }

  void subAdult() {
    setState(() {
      adult--;
    });
  }

  void addChild() {
    setState(() {
      children++;
    });
  }

  void subChild() {
    setState(() {
      children--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => subAdult(),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          disabledBackgroundColor: Color(0),
                          minimumSize: Size(20, 20),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15, left: 15),
                        child: Text(
                          "${adult} adult",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => addAdult(),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          disabledBackgroundColor: Color(0),
                          minimumSize: Size(20, 20),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        ),
                      ),
                    ],
                  )),
              Container(
                  // width: 184,
                  //   margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => subChild(),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          disabledBackgroundColor: Color(0),
                          minimumSize: Size(20, 20),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 12, left: 12),
                        child: Text("${children} children"),
                      ),
                      ElevatedButton(
                        onPressed: () => addChild(),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0,
                          disabledBackgroundColor: Color(0),
                          minimumSize: Size(20, 20),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 55),
          child: Center(
              child: ElevatedButton(
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              "you are trying to find hotel for ${adult} adults and ${children} children"
                          )
                      )),
                  child: Text(
                    "Find Hotels",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                   ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                  minimumSize: Size(450, 50),
                  // padding: EdgeInsets.symmetric(vertical: 20,horizontal: 180)
                ),
              )
          ),
        )
      ],
    );
  }
}
