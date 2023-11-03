import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = "Flutter drawer Demo";
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: myHomePage(title:appTitle),
    );
  }
}

class myHomePage extends StatelessWidget {
  final String title;
  const myHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text(
          "A Drawer is an invisible side screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // important : remove any padding from the listview
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Elon"),
                accountEmail: Text("ElonMusk@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "EM",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.settings),title: Text("Setting"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),title: Text("Contact"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}











