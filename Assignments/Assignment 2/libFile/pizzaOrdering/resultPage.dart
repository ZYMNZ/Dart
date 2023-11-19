import 'package:flutter/material.dart';
import 'package:pizza_ordering/homePage.dart';

class resultPage extends StatefulWidget {
  resultPage({super.key, required this.price, required this.userId});
  int? price;
  String? userId;

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.lightBlue[300],
          body: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 300,top: 70),
                  child: Text("${widget.userId}")
                ),

                Text("Your order has been processed",style: TextStyle(fontSize: 15),),

                Divider(
                  thickness: 1,
                  indent: 100,
                  endIndent: 100,
                  color: Colors.black,
                ),

                SizedBox(height: 60,),

                Text("Please pay ${widget.price} for confirmation",style: TextStyle(fontSize: 15)),

                Divider(
                  thickness: 1,
                  indent: 100,
                  endIndent: 100,
                  color: Colors.black,
                ),

                SizedBox(height: 60,),

                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => homePage(userId: widget.userId),)
                  );
                }, child: Text("Home"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),

                )
              ],
            ),
          )
      ),
    );
  }
}

