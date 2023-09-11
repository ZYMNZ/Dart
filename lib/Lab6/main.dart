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
        body: Main(),
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Image.network(
            'https://media.cntraveler.com/photos/63a4a9a79a8fb4fd7036d7c8/3:2/w_5967,h_3978,c_limit/Highline%20Trail,%20Montana_GettyImages-1421636115.jpg',
            fit: BoxFit.cover
        ),
        
      ],
    );
  }
}
