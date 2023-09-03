import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myStatelessWidget());
} 

// class MyApp extends StatelessWidget {
//    MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Strawberry",
//         home: myStatelessWidget(),
//     );
//   }
// }

class myStatelessWidget extends StatelessWidget {
   myStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ContainerOne(),
          ContainerTwo(),
          ContainerThree(),
          ContainerFour(),
        ],

      ),
      height: 783,
      width: 392,
    );
  }
}

class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: 60),
          child: Text(
            "Strawberry Pavlova" ,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 30,
            fontWeight: FontWeight.bold
          )),
        )
      ],
    );
  }
}

class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align( child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Text(
              "Pavlova is a mergingue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crsisp crust and soft,light inside, topped with fruit and whipped cream." ,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              )),
           width: 338,
          )
        )
      ],
    );
  }
}

class ContainerThree extends StatelessWidget {
  const ContainerThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 60,right: 25,bottom: 10),
      child: Row(
          children: [
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            SizedBox(width: 20),
            Row(
              children: [
                Text(
                    "170 Reviews",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),
                )
              ],
            )
          ],
        )
    );
  }
}



class ContainerFour extends StatelessWidget {
  const ContainerFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          ColumnOne(),
          ColumnTwo(),
          ColumnThree()
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      ),
    );
  }
}

class ColumnOne extends StatelessWidget {
  const ColumnOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.kitchen_rounded,
          color: Colors.lightGreen,
        ),
        SizedBox(height: 15),
        Text(
          "PREP:",
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        ),
        SizedBox(height: 15),
        Text(
          "25 min",
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        )
      ],
    );
  }
}

class ColumnTwo extends StatelessWidget {
  const ColumnTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.timer_outlined,
          color: Colors.lightGreen,
        ),
        SizedBox(height: 15),
        Text(
          "COOK:",
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        ),
        SizedBox(height: 15),
        Text(
          "1 hr",
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        )
      ],
    );
  }
}

class ColumnThree extends StatelessWidget {
  const ColumnThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.restaurant,
          color: Colors.lightGreen,
        ),
        SizedBox(height: 15),
        Text(
          "FEEDS:",
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        ),
        SizedBox(height: 15),
        Text(
          "4-6",
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey
          ),
        )
      ],
    );
  }
}
