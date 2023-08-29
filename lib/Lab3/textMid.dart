import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("Text"),),
        body: ListView(
            children: [
              SizedBox(height: 20),
              Text(
                "Meow CAT",
                style: TextStyle(fontSize: 24),
              ),SizedBox(height: 20),
              Text(
                "Meow CAT",
                style: TextStyle(fontSize: 24),
              ),SizedBox(height: 20),
              Text(
                "Meow CAT",
                style: TextStyle(fontSize: 24),
              ),SizedBox(height: 20),
              Text(
                "Meow CAT",
                style: TextStyle(fontSize: 24),
              ),
              Container(
                height: 100,
                color: Colors.blue,
                width: 100,
                alignment: Alignment.center,
                child: Text("halooo"),
              ),
              Container(
                height: 100,
                color: Colors.amber,
                width: 100,
                alignment: Alignment.center,
                child: Text("halooo"),
              ),
              Container(
                child:
                Image(
                  image: NetworkImage("https://repository-images.githubusercontent.com/616985963/6bd24181-7a04-4d93-9a0d-f3d89830c232"),height: 200,width: 200,),

              ),
              Image.network("https://m.media-amazon.com/images/I/71XMYGomMdL._AC_UF1000,1000_QL80_.jpg",)
            ],
          ),
        ),
      );
  }
}










