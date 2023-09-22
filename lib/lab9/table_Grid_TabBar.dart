import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Tables
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Table Demo")),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_box,
                            size: 40,
                          ),
                          Text("My Data")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 40,
                          ),
                          Text("My Settings")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.lightbulb,
                            size: 40,
                          ),
                          Text("My idea")
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_box,
                            size: 40,
                          ),
                          Text("My Data")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 40,
                          ),
                          Text("My Settings")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.lightbulb,
                            size: 40,
                          ),
                          Text("My idea")
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text("My Data")],
                      ),
                      Column(
                        children: [Text("My Settings")],
                      ),
                      Column(
                        children: [Text("My idea")],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_box,
                            size: 40,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 40,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.lightbulb,
                            size: 40,
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 */


// GRID VIEW
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = "Grid View Demo" ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
        home: Scaffold(
        appBar: AppBar(title: Text(title)),
          body: MyStatefulWidget(),
      )
    );
  }
}
*/
/*
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3
        ),
        padding: EdgeInsets.all(20),
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.green,
          ),Container(
            padding: EdgeInsets.all(8),
            color: Colors.red,
          ),Container(
            padding: EdgeInsets.all(8),
            color: Colors.blue,
          ),Container(
            padding: EdgeInsets.all(8),
            color: Colors.pink,
          ),Container(
            padding: EdgeInsets.all(8),
            color: Colors.purple,
          ),Container(
            padding: EdgeInsets.all(8),
            color: Colors.orange,
          ),Container(
            padding: EdgeInsets.all(8),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
 */


//this code will be used to design tab bar view

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tab Bar",
      home: MyTabBarClass(),
    );
  }
}

class MyTabBarClass extends StatefulWidget {
  const MyTabBarClass({super.key});

  @override
  State<MyTabBarClass> createState() => _MyTabBarClassState();
}

class _MyTabBarClassState extends State<MyTabBarClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.android), text: "Android Phone",),
                Tab(icon: Icon(Icons.phone_iphone), text: " IPhone",),
              ],
            ),
            title: Text("Tab Bar Clickable Interface"),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("You Have Android"),),
              Center(child: Text("You Have Iphone"),)
            ],
          ),
        ));
  }
}

