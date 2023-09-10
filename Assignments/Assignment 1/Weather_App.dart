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
        body: Column(
          children: [
            SearchBarPart(),
            CityPart(),
            SizedBox(height: 10,),
            DegreePart(),
            SizedBox(height: 10,),
            Statement(),
            SizedBox(height: 10,),
            DaysWeather(),
            SizedBox(height: 10,),
            Info()
          ],
        ),
        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.amberAccent),
      ),
    );
  }
}

class SearchBarPart extends StatelessWidget {
  const SearchBarPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 10,),
            Text("Cork")
          ],
        ),
      ),
      color: MaterialStateColor.resolveWith((states) => Colors.white),
    );
  }
}

class CityPart extends StatelessWidget {
  const CityPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
                "CORK",
              style: TextStyle(

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text("-8.47 , 51.9")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DegreePart extends StatelessWidget {
  const DegreePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('16',style: TextStyle(
                      
                    ),
                    ),
                    Text('\u00B0C',style: TextStyle(
                      
                    ),
                    ),
                  ],
                ),
                Text("Feels like 13\u00B0C")
              ],
            ),
          ),
          Container(
            child: Icon(Icons.wb_cloudy)
          )
        ],
      ),
    );
  }
}

class Statement extends StatelessWidget {
  const Statement ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Broken Clouds",
        style: TextStyle(

        )),
      ),
    );
  }
}

class DaysWeather extends StatelessWidget {
  const DaysWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            RowChildOne(),
          RowChildTwo(),
          RowChildThree(),
        ],
      ),
    );
  }
}

class RowChildOne extends StatelessWidget {
  const RowChildOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text("Fri"),
              Text("16\u00B0"),
            ],
          ),
          SizedBox(width: 8,),
          Icon(Icons.cloud)
        ],
      ),
    );
  }
}

class RowChildTwo extends StatelessWidget {
  const RowChildTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text("Sat"),
              Text("16\u00B0"),
            ],
          ),
          SizedBox(width: 8,),
          Icon(Icons.cloud)
        ],
      ),
    );
  }
}

class RowChildThree extends StatelessWidget {
  const RowChildThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text("Sun"),
              Text("20\u00B0"),
            ],
          ),
          SizedBox(width: 8,),
          Icon(Icons.cloud)
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.watch_later_outlined),
            SizedBox(width: 10,),
            Text("Last updated on 2:49 PM",
            style: TextStyle(

            ),),
          ],
        ),
      ),
    );
  }
}
