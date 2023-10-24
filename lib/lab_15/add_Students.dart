import 'package:flutter/material.dart';
import 'package:fifteenth_flutter_project/dbhelper.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {

  TextEditingController name = TextEditingController();
  TextEditingController rollNumber = TextEditingController();
  TextEditingController address = TextEditingController();

  Mydb mydb = new Mydb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mydb.open(); // initialize the database and start to add students information
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("Add student")),
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
                mydb.db.rawInsert("insert into students (name, roll_no, address) values (?,?,?);",
                 [name.text,rollNumber.text,address.text]
                ); //added the student to the db

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("New Student added")));

              }, child: Text("Save student to the database"))

            ],
          ),
        ),
    );
  }
}



