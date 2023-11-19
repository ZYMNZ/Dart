import 'package:flutter/material.dart';
import 'package:room_database/DatabaseHelper.dart';
import 'package:room_database/room.dart';

void main() {
  runApp(const MyApp());
}

List<Room> rooms = [];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RoomPage(),
    );
  }
}

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});


  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {

  String buttonName = "INSERT USER";

  TextEditingController name = TextEditingController();
  TextEditingController contactPhone = TextEditingController();
  TextEditingController ssn = TextEditingController();
  TextEditingController address = TextEditingController();

  final DatabaseHelper dbHelper = DatabaseHelper.instance;
  // List<Room> rooms = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _queryAll();
    setState(() {
    });
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Room DataBase",style: TextStyle(color: Colors.white,fontSize: 20,),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child:  Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: "Name"),
            ),

            TextField(
              controller: contactPhone,
              decoration: InputDecoration(hintText: "Contact Phone"),
            ),

            TextField(
              controller: ssn,
              decoration: InputDecoration(hintText: "SSN"),
            ),

            TextField(
              controller: address,
              decoration: InputDecoration(hintText: "Address"),
            ),

            SizedBox(height: 10,),

            ElevatedButton(
              onPressed:() {
                if(name.text.isEmpty||contactPhone.text.isEmpty||ssn.text.isEmpty||address.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Do not leave any field",style: TextStyle(color: Colors.black)),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        backgroundColor: Colors.grey[200],
                        width: 170,
                      )
                  );
                }
                else{
                    String nameInput = name.text;
                    String contactInput = contactPhone.text;
                    String ssnInput = ssn.text;
                    String addressInput = address.text;
                _insert(nameInput, contactInput, ssnInput, addressInput);
                    setState(() {
                      _queryAll();
                    });
                    name.text="";
                    contactPhone.text="";
                    ssn.text="";
                    address.text="";
                }
              },
              child: Text(buttonName),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.lime),
                padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 65,vertical: 13),),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(height: 10,),

            Expanded(
              child: ListView.builder(
                itemCount: rooms.length,
                itemBuilder:(context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Icon(Icons.account_circle_outlined,size: 40),
                      title: Text("${rooms[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text("${rooms[index].contactPhone} \n ${rooms[index].ssn} \n ${rooms[index].address} ",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                      ),
                      isThreeLine: true,
                      dense: true,
                      trailing: Wrap(
                          children: [
                            IconButton(
                                onPressed: () {
                                  int? id = rooms[index].id;
                                  _delete(id);
                                },
                                icon: Icon(Icons.delete)
                            ),
                            IconButton(
                                onPressed:() {
                                  int idT = rooms[index].id!;

                                  Navigator.of(context).pushReplacement(
                                   MaterialPageRoute(builder: (context) =>
                                       UpdatePage(id: idT,),
                                   )
                                  );
                                  setState(() {
                                  });
                                },
                                icon: Icon(Icons.edit)
                            ),
                          ],
                        ),
                      ),
                    );
                },
              ),
            ),

            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }


  void _insert(name, contactPhone, ssn, address) async{
    Map<String,dynamic> row = {
        DatabaseHelper.columnName : name,
        DatabaseHelper.columnContactPhone : contactPhone,
        DatabaseHelper.columnSSN : ssn,
        DatabaseHelper.columnAddress : address,
      };
    Room room = Room.fromMap(row);
    final id = await dbHelper.insert(room);
  }

  void _queryAll() async{
    final allRows = await dbHelper.queryAll();

    rooms.clear();
    allRows?.forEach((row) => rooms.add(Room.fromMap(row)));
    setState(() {});
  }

  // void _update(id, name, contactPhone, ssn, address) async{
  //   Room room = Room(id, name, contactPhone, ssn, address);
  //   final rowsAffected = await dbHelper.update(room);
  //   _queryAll();
  //   setState(() {
  //   });
  // }


  void _delete(id) async{
    final delete = await dbHelper.delete(id);
    _queryAll();
    setState(() {});
  }

}




//updating page

class UpdatePage extends StatefulWidget {
   UpdatePage({
    super.key,
    required this.id,
  });
  int id;

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {


  String buttonName = "UPDATE USER";

  TextEditingController name = TextEditingController();
  TextEditingController contactPhone = TextEditingController();
  TextEditingController ssn = TextEditingController();
  TextEditingController address = TextEditingController();

  final DatabaseHelper dbHelper = DatabaseHelper.instance;

  void fetchData() async{
    Map<String,dynamic>? data = await dbHelper.getSingleData(widget.id);
    if(data != null){
      name.text = data['name'];
      contactPhone.text = data['contactPhone'];
      ssn.text = data['ssn'];
      address.text = data['address'];
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
    setState(() {
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    contactPhone.dispose();
    ssn.dispose();
    address.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Room DataBase",style: TextStyle(color: Colors.white,fontSize: 20,),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child:  Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: "Name"),
            ),

            TextField(
              controller: contactPhone,
              decoration: InputDecoration(hintText: "Contact Phone"),
            ),

            TextField(
              controller: ssn,
              decoration: InputDecoration(hintText: "SSN"),
            ),

            TextField(
              controller: address,
              decoration: InputDecoration(hintText: "Address"),
            ),

            SizedBox(height: 10,),

            ElevatedButton(
              onPressed:() {
                _update(widget.id, name.text, contactPhone.text, ssn.text, address.text);
                setState(() {});
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => RoomPage(),));
                setState(() {

                });
              },
              child: Text(buttonName),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.lime),
                padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 65,vertical: 13),),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(height: 10,),

            Expanded(
              child: ListView.builder(
                itemCount: rooms.length,
                itemBuilder:(context, index) {
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Icon(Icons.account_circle_outlined,size: 40),
                      title: Text("${rooms[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      subtitle: Text("${rooms[index].contactPhone} \n ${rooms[index].ssn} \n ${rooms[index].address} ",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                      ),
                      isThreeLine: true,
                      dense: true,
                      trailing: Wrap(
                        children: [
                          IconButton(
                              onPressed: () {
                                int? id = rooms[index].id;
                                _delete(id);
                              },
                              icon: Icon(Icons.delete)
                          ),
                          IconButton(
                              onPressed:() {

                                int idT = rooms[index].id!;

                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) =>
                                        UpdatePage(id: idT,),
                                    )
                                );
                                setState(() {
                                });

                              },
                              icon: Icon(Icons.edit)
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }


  void _insert(name, contactPhone, ssn, address) async{
    Map<String,dynamic> row = {
      DatabaseHelper.columnName : name,
      DatabaseHelper.columnContactPhone : contactPhone,
      DatabaseHelper.columnSSN : ssn,
      DatabaseHelper.columnAddress : address,
    };
    Room room = Room.fromMap(row);
    final id = await dbHelper.insert(room);
  }

  void _queryAll() async{
    final allRows = await dbHelper.queryAll();

    rooms.clear();
    allRows?.forEach((row) => rooms.add(Room.fromMap(row)));
    setState(() {});
  }

  void _update(id, name, contactPhone, ssn, address) async{
    Room room = Room(id, name, contactPhone, ssn, address);
    final rowsAffected = await dbHelper.update(room);
    _queryAll();
    setState(() {
    });
  }

  void _delete(id) async{
    final delete = await dbHelper.delete(id);
    _queryAll();
    setState(() {});
  }

}





























