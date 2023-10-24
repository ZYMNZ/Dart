import 'package:fifteenth_flutter_project/dbhelper.dart';
import 'package:fifteenth_flutter_project/main.dart';
import 'package:flutter/material.dart';


class EditStudent extends StatefulWidget {


  int rollno;
  EditStudent ({required this.rollno});

  @override
  State<EditStudent> createState() => _EditStudentState();
}

class _EditStudentState extends State<EditStudent> {

  TextEditingController name = TextEditingController();
  TextEditingController rollNumber = TextEditingController();
  TextEditingController address = TextEditingController();

  Mydb mydb = Mydb();

  @override
  void initState() {
    // TODO: implement initState

    mydb.open();

    Future.delayed(Duration(milliseconds: 500), () async {
      var data = await mydb.getStudent(widget.rollno); // widget.rollno is passed parameter to this class

      if(data != null){
        name.text = data['name'];
        rollNumber.text = data['roll_no'].toString();
        address.text = data['address'];
        setState(() {});
      }
      else{
        print('not any data with that roll no' + widget.rollno.toString());
      }

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("edit student")),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  hintText: "Student Name"
              ),
            ),
            TextField(
              controller: rollNumber,
              decoration: InputDecoration(
                  hintText: "Roll Number"
              ),
            ),
            TextField(
              controller: address,
              decoration: InputDecoration(
                  hintText: "Student Address"
              ),
            ),
            ElevatedButton(onPressed: () {
              mydb.db.rawInsert("update students set name = ?, roll_no = ?, address = ? where roll_no = ?",
                  [name.text,rollNumber.text,address.text,widget.rollno]
              ); //updating the db

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Student updated")));

            }, child: Text("update student to the database"))

          ],
        ),
      ),
    );
  }
}


