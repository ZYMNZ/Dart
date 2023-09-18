import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => VanierLogin(),
        "/sendinfo": (context) => TextDisplay(),
      }

    );
  }
}



class VanierLogin extends StatefulWidget {
  const VanierLogin({super.key});

  @override
  State<VanierLogin> createState() => _VanierLoginState();
}

class _VanierLoginState extends State<VanierLogin> {
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Editing example")),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.green
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // The text field
                    TextField(
                      controller: _textEditingController, // set the controller to capture the data entered by the user
                      decoration: InputDecoration(labelText: "Enter the username"),
                    ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _passwordEditingController,
                    decoration: InputDecoration(
                      labelText: "Password:"
                    ),
                  ),
                  ElevatedButton(
                      onPressed:() {
                        Navigator.pushNamed(
                          context,
                          "/sendinfo",
                          arguments: [_textEditingController.text, _passwordEditingController.text]
                        );
                      },
                      child: Text("Submit")
                  ),
                ]
              )
            )
          )
        ]
      )
    );
  }
}

class TextDisplay extends StatelessWidget {
  const TextDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String>? argumentsSent = ModalRoute.of(context)?.settings.arguments as List<String>?;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text("${argumentsSent?[0]} is username and password is ${argumentsSent?[1]}"),
            )
          ]
        )
      )
    );
  }
}

class UsernameCredentials {
  final String username;
  final String password;

  UsernameCredentials(this.username, this.password);
}

