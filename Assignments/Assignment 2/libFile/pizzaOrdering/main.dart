import 'package:flutter/material.dart';
import 'package:pizza_ordering/registration.dart';
import 'package:pizza_ordering/homePage.dart';
import 'package:pizza_ordering/Dbhelper.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: signIn(),
    );
  }
}

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {

  TextEditingController userId = TextEditingController();
  TextEditingController password = TextEditingController();


  Dbhelper mydb = new Dbhelper();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mydb.open();
    setState(() {

    });
  }


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message, BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message))
    );
  }

  void fetchData() async {
    Map<dynamic, dynamic>? data = await mydb.getUser(userId.text);
    print("errorrrrrrrr");
    if(data != null){

      if(userId.text == data['username'] && password.text == data['password']){
        _showMessageInScaffold("Signed in successfully", context);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => homePage(userId: userId.text,),)
        );
      }
      else{
        _showMessageInScaffold("ERROR in SigningIn", context);
      }
    }
    else{
      _showMessageInScaffold("Wrong Username or Password", context);
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        backgroundColor: Colors.lightBlue[300],
        appBar: AppBar(title: Text("My Application"),),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 90,),

              Image.asset("assets/images/lion.jpg", width: 120,),

              Container(
                margin: EdgeInsets.only(top: 70),
                width: 190,
                child: TextField(
                  controller: userId,
                  decoration: InputDecoration(
                    hintText: "UserID",
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 70),
                width: 190,
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),

              SizedBox(height: 40,),

              ElevatedButton(
                onPressed: (){
                  if(userId.text.isEmpty || password.text.isEmpty){
                    _showMessageInScaffold("Empty fields", context);
                  }
                  else{



                    fetchData();
                    print("meowmeow");
                  }
                },
                child: Text("SIGN IN"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),

              SizedBox(height: 30,),

              Container(
                margin: EdgeInsets.only(left: 190),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder:
                            (context) => registration(),
                        )
                    );
                  },
                  child: Text("REGISTER"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical:17 ),
                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }



}






