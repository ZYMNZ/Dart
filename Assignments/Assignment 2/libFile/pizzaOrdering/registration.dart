import 'package:flutter/material.dart';
import 'package:pizza_ordering/main.dart';
import 'package:pizza_ordering/Dbhelper.dart';
import 'package:pizza_ordering/User.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  TextEditingController userId = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
         key: _scaffoldKey,
         backgroundColor: Colors.lightBlue[300],
         appBar: AppBar(title: Text("My Application"),),
         body: Container(
           alignment: Alignment.center,
           padding: EdgeInsets.symmetric(vertical: 60,horizontal: 90),
           child: Column(
             children: [
               Text("Registration",style: TextStyle(fontSize: 30),),

               SizedBox(height: 40,),

               TextField(
                 controller: userId,
                 decoration: InputDecoration(
                   hintText: "UserID",
                 ),
               ),

               SizedBox(height: 40,),

               TextField(
                 controller: password,
                 decoration: InputDecoration(
                   hintText: "Password",

                 ),
                 obscureText: true,
               ),

               SizedBox(height: 40,),

               TextField(
                 controller: confirmPassword,
                 decoration: InputDecoration(
                   hintText: "Confirm Password",
                 ),
                 obscureText: true,
               ),

               SizedBox(height: 60,),

               ElevatedButton(
                 onPressed: (){
                   if(password.text != confirmPassword.text || userId.text.isEmpty || password.text.isEmpty || confirmPassword.text.isEmpty){
                     _showMessageInScaffold("password is not the same OR Empty fields", context);
                   }
                    else {
                     // _insert(userId.text, password.text);
                     mydb.db.rawInsert(
                         "insert into user (username, password) values (?,?);",
                       [userId.text,password.text]
                     );
                    print("Heelooo");
                     _showMessageInScaffold("Registered Successfully", context);
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => signIn(),)
                      );
                    }
                 },
                 child: Text("SAVE"),
                 style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.symmetric(horizontal: 25),
                 ),
               ),
             ],
           ),
         )

    );
  }

  // void _insert(username, password) async{
  //   Map<String,dynamic> row = {
  //     Dbhelper.columnUsername : username,
  //     Dbhelper.columnPassword : password,
  //
  //   };
  //   print("befre db");
  //   User user = User.fromMap(row);
  //   print("after db");
  //   final id = await dbHelper.insert(user);
  // }
}