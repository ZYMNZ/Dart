import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// GRID
/*
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Grid View"),),
          body: Center(
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
            ),
            padding:  EdgeInsets.all(20),
            children: [
              Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.blueAccent[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.purple[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.yellow[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.deepOrange[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.brown[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.pink[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.tealAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.indigo,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.lightGreenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),Container(
                margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
                color: Colors.yellowAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house,size: 35,),
                    Text("house",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ],
            )
          ),
        ),
    );
  }
}
 */


//LOGIN

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _userName = TextEditingController();
final TextEditingController _password = TextEditingController();
String pass = "vanier";
void check(){
  if(_password == pass){
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logined in Successfully")));
  }
  else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong Password")));
  }
  print("What is happening");
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login page"),),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                child: Text("Sign in",
                style: TextStyle(
                  fontSize: 20
                )),
              ),
              Container(
                child: TextField(
                  controller: _userName,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_box),
                    hintText: "UserName"
                  )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: TextField(
                  controller: _userName,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: "Password"
                  )
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "Forget Password",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15
              ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                     check();
                  },
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

