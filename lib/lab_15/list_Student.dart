import 'package:flutter/material.dart';
import 'package:fifteenth_flutter_project/dbhelper.dart';
import 'package:fifteenth_flutter_project/edit_student.dart';


class DisplayStudents extends StatefulWidget {
  const DisplayStudents({super.key});

  @override
  State<DisplayStudents> createState() => _DisplayStudentsState();
}

class _DisplayStudentsState extends State<DisplayStudents> {

  List<Map> slist = [];
  Mydb mydb = Mydb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mydb.open();
    getData();
  }

  void getData(){
    Future.delayed(Duration(milliseconds: 500), ()  async{
      // use delay min 500ms, because database takes time to reinitialize
      slist = await mydb.db.rawQuery("select * from students");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List of Students"),),
      body: SingleChildScrollView(
        child: Container(
          child: slist.length == 0 ? Text("Not any students to show ") : // show message if there isnt
          Column(
            children: slist.map((student) {
              return Card(
                child: ListTile(
                leading: Icon(Icons.people),
                title: Text(student['name']),
                subtitle: Text("Roll No" + student['roll_no'].toString() + ", Address" + student['address']),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (BuildContext context){
                            return EditStudent(rollno: student['roll_no']);
                          }));
                    }, icon: Icon(Icons.edit)),

                    IconButton(onPressed: () async {
                      await mydb.db.rawDelete("delete from students where roll_no = ?",[student['roll_no']]);

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Student deleted")));

                    }, icon: Icon(Icons.delete, color: Colors.red,))
                  ],
                ),
            ),
            );
            }).toList(),

          )
        ),
      ),
    );
  }
}
