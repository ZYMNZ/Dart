import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//login_inClass
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = "Demo GlobalKey";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: ScaffoldMessenger(
        key: GlobalKey<ScaffoldMessengerState>(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          body: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void showLoginFailedSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login failed, you brain damage")));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              "Login Demo with Global key",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              "Sign in",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "user name"),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true, //this is for hide the text
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "password"),
              )),
          TextButton(onPressed: () {}, child: Text("Forgot Password")),
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text("Login in"),
              onPressed: () {
                final login = nameController
                    .text; // retrieve the value on the login field
                final passord = passwordController.text;
                if (passord == "123") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(login, passord),
                      ));
                } else {
                  showLoginFailedSnackBar();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String login;
  final String password;
  const SecondScreen(this.login, this.password, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Screen")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login: $login",
                  ),
                  Text(
                      "Password: $password"
                  )
                ]
            )
        )
    );
  }
}
*/

//Counter/Reset
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _counter = 0;
  final GlobalKey<ScaffoldState>  _scaffoldKey =  GlobalKey<ScaffoldState>();

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  void _showResetSnakBar(){
    final snackBar = SnackBar(
        content: Text('COunter Reset to 0'));
    _scaffoldKey.currentState?.showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Increment")),
            ElevatedButton(
                onPressed: (){
                  _resetCounter();
                  _showResetSnakBar();
                },
                child: Text("Reset Counter"))
          ],
        ),
      ),
    );
  }
}
*/

// if fieldText is empty => display Sccafold
/*
class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Demo checking")),
          body:
          Builder(
            builder: (context){
              return Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        controller: username,
                      ),
                      ElevatedButton(onPressed: () {
                        if(username.text.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Enter smth")));
                        }
                      },
                          child: Text("Log in"))
                    ],
                  ),
                ),
              );
            }
          )

        )

    );
  }
}
 */
