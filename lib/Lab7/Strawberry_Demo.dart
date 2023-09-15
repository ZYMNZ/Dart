import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Strawberry Demo',
 home: MyBerry(),
 );
 }
}

class MyBerry extends StatelessWidget {
 // this method build the rows of stars

 static var stars = Row(
 mainAxisSize: MainAxisSize.min,
 children: [
 Icon(
 Icons.star,
 color: Colors.green,
 ),
 Icon(
 Icons.star,
 color: Colors.green,
 ),
 Icon(
 Icons.star,
 color: Colors.green,
 ),
 Icon(
 Icons.star,
 color: Colors.red,
 ),
 Icon(
 Icons.star,
 color: Colors.red,
 ),
 ],
 );

 // this method includes a stars and also a text inside a container

 static final ratings = Container(
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [stars, Text('172 Reviews')],
 ),
 );

 // create your own custom property for textstyle using a method

 static const descTextStyle = TextStyle(
 color: Colors.black,
 fontFamily: 'Roboto',
 fontWeight: FontWeight.w800,
 letterSpacing: 0.5,
 fontSize: 18,
 height: 2,
 );

 // Use DefaultTextStyle.merge that allows to create a default text that is inherited
 //by its child widget for all subsequent children
 static final IconList = DefaultTextStyle.merge(
 style: descTextStyle,
 child: Container(
 padding: EdgeInsets.all(20),
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Column(
 children: [
 Icon(
 Icons.kitchen,
 color: Colors.green,
 ),
 Text('Prep'),
 Text('25 mins'),
 ],
 ),
 Column(
 children: [
 Icon(
 Icons.timer,
 color: Colors.green,
 ),
 Text('Cook'),
 Text('1 min'),
 ],
 ),
 Column(
 children: [
 Icon(
 Icons.restaurant,
 color: Colors.green,
 ),
 Text('Feeds'),
 Text('4-6'),
 ],
 ),
 ],
 ),
 ));

 // building the first line of text from the left column

 static final titleText = Container(
 child: Text(
 'STRAWBERRY CAKE',
 style: descTextStyle,
 ),
 );

 // building the description paragraph in the second row

 static final subTitle = Container(
 child: Text(
 'For example, when installed from GitHub (as opposed to from a prepackaged archive), the Flutter tool downloads the Dart SDK from Google servers immediately when first run, as it is used to execute the flutter tool itself. '
 'This also occurs when Flutter is upgraded '
 '(for example, by running the flutter upgrade command)',
 softWrap: true,
 ),
 );

 // now use all the methods in left column to build the entire left widget space in the mobile screen interface

 final leftColumn = Container(
 padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
 child: Column(
 children: [
 titleText,
 subTitle,
 ratings,
 IconList,
 ],
 ),
 );

 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Star Demo'),
 ),
 body: Center(
 child: Container(
 margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
 height: 600,
 child : Card(
 child: Row(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: [
 Expanded(
 child: SizedBox(
 width: 400,
 child: leftColumn,
 ),
 )
 ],
 ),
 ),
 ),
 ),
 );
 }
}
