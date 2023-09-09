import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image asset"),
        ),
        body: Image.asset('assets/images/cat.jpg'),
        ),

    );
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlignmentDemo(),
    );
  }
}
*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alignment Demo"),
        ),
        body: AlignmentDemo(),
      ),

    );
  }
}
*/
//in "Row" -> colors are placed in a row
/*
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.amber[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.red, height: 50, width: 50,),
            Container(color: Colors.green, height: 50, width: 50,),
            Container(color: Colors.blue, height: 50, width: 50,),
          ],
        ),
      ),
    );
  }
}
*/
/*
//changed row -> column
//stretched the colors horizontally with cross axis alignment
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.amber[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.red, height: 50, width: 50,),
            Container(color: Colors.green, height: 50, width: 50,),
            Container(color: Colors.blue, height: 50, width: 50,),
          ],
        ),
      ),
    );
  }
}
*/
/*
//changed Column -> Row
//mainAxisAlignment - spaceEvenly
//crossAxisAlignment - center
//changes the sizes of the colored containers
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.amber[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 100, width: 50,),
            Container(color: Colors.green, height: 50, width: 50,),
            Container(color: Colors.blue, height: 180, width: 50,),
          ],
        ),
      ),
    );
  }
}
*/
/*
//Row -> Flex
//change the direction - horizontal or vertical
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.amber[300],
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 50, width: 50,),
            Container(color: Colors.green, height: 50, width: 50,),
            Container(color: Colors.blue, height: 50, width: 50,),
          ],
        ),
      ),
    );
  }
}*/
/*
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.blue, padding: EdgeInsets.all(20.0), margin: EdgeInsets.all(20.0),child: Text('Container with padding and margin', style: TextStyle(color:Colors.white)),),

          ],

      ),
    );
  }
}
*/
/*
//Changing the padding and margin
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(color: Colors.blue, padding: EdgeInsets.all(20.0), margin: EdgeInsets.all(20.0),child: Text('Container with padding and margin', style: TextStyle(color:Colors.white)),),
        SizedBox(
          height: 16.0,
        ),
          Container(color: Colors.green, padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), margin: EdgeInsets.only(top: 80.0),child: Text('Custon container with padding and margin', style: TextStyle(color:Colors.white)),),
        ],

      ),
    );
  }
}

 */
/*
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(color: Colors.blue, padding: EdgeInsets.all(20.0), margin: EdgeInsets.all(20.0),child: Text('Container with padding and margin', style: TextStyle(color:Colors.white)),),
          SizedBox(
            height: 16.0,
          ),
          Container(color: Colors.green, padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), margin: EdgeInsets.only(top: 80.0),child: Text('Custon container with padding and margin', style: TextStyle(color:Colors.white)),),
          SizedBox(
            height: 16.0,
          ),
          Container(color: Colors.orange, padding: EdgeInsets.fromLTRB(50.0, 10.0, 30.0, 10.0), margin: EdgeInsets.symmetric(horizontal: 50.0),child: Text('Padding and margin on ALL sides', style: TextStyle(color:Colors.white)),),
        ],

      ),
    );
  }
}
 */
/*
//styling text
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Defualt Text'),
          SizedBox(height: 16.0,),
          //styled text
          Text('Styled Text', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color:Colors.blue, letterSpacing: 1.5, decoration: TextDecoration.underline, decorationColor: Colors.red, decorationStyle: TextDecorationStyle.dotted))
        ],


      ),
    );
  }
}*/
/*
//text styling
class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Defualt Text'),
          SizedBox(height: 16.0,),
          //styled text
          Text('Styled Text', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color:Colors.blue, letterSpacing: 1.5, decoration: TextDecoration.underline, decorationColor: Colors.red, decorationStyle: TextDecorationStyle.dotted)),
          SizedBox(height: 16.0,),
          //text overflow
          Container(width:100, child: Text('this is a long text that should overflow the container', overflow: TextOverflow.ellipsis,),),
          SizedBox(height: 16.0,),
          //text scaling
          Text('text scaling', textScaleFactor: 4.5,),
          SizedBox(height: 16.0,),
          //rich text
          RichText(text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [TextSpan( text:'Rich Text', style: TextStyle(fontWeight: FontWeight.bold),),

                        TextSpan( text:'Rich Text with different styles', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.normal),)]
          ))
        ],


      ),
    );
  }
}

*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Demo"),
        ),
        body: ListView(
          children: [ListTile(title: Center(child: Text('Item 1'),),
          subtitle: Center(
            child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
          ),
          trailing: Icon(Icons.star, color: Colors.yellow),
            contentPadding: EdgeInsets.all(16.0),
            tileColor: Colors.blue,
          ),
            ListTile(title: Center(child: Text('Item 2'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.green,
            ),
            ListTile(title: Center(child: Text('Item 3'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.yellow,
            ),
            ListTile(title: Center(child: Text('Item 4'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.red,
            ),
            ListTile(title: Center(child: Text('Item 5'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.blue,
            ),
            ListTile(title: Center(child: Text('Item 6'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.green,
            ),
            ListTile(title: Center(child: Text('Item 7'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.yellow,
            ),
            ListTile(title: Center(child: Text('Item 8'),),
              subtitle: Center(
                child: ElevatedButton(onPressed: (){}, child: Text('Click me'),),
              ),
              trailing: Icon(Icons.star, color: Colors.yellow),
              contentPadding: EdgeInsets.all(16.0),
              tileColor: Colors.red,
            ),
          ],
        ),
      ),

    );
  }
}

 */
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Demo"),
        ),
        body: WeatherApp(),
      ),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Montreal,QC',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 16,
        ),
        Icon(
          Icons.cloud,
          size: 64,
          color: Colors.blue,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thermostat,
              size: 24,
              color: Colors.red,
            ),
            Text(
              '71 F',
              style: TextStyle(fontSize: 36),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Partly cloudy with a chance of Rain',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Fetch the Temperature'),
        )
      ],
    );
  }
}
*/
