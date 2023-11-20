import 'package:flutter/material.dart';
import 'package:sqlcarcrud_thirteenth_flutter/car.dart';
import 'package:sqlcarcrud_thirteenth_flutter/dbhelper.dart';

void main()  => runApp( MyApp());

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRUD",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dbHelper = DatabaseHelper.instance;

  List<Car> cars = [];
  List<Car> carsByName = [];

  //text controllers used in inserting a car
  TextEditingController nameController = TextEditingController();
  TextEditingController milesController =TextEditingController();

  //text controllers used in updating a car
  TextEditingController idUpdateController =TextEditingController();
  TextEditingController nameUpdateController =TextEditingController();
  TextEditingController milesUpdateController =TextEditingController();

  //text controllers used in delete a car
  TextEditingController idDeleteController =TextEditingController();

  //text controllers used for searching a car
  TextEditingController queryController =TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message, BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Insert"),
                Tab(text: "View"),
                Tab(text: "Search"),
                Tab(text: "Update"),
                Tab(text: "Delete"),
              ],
            ),
            title: Text("SqLite CRUD example"),
          ),

          body: TabBarView(
            children: [
              //INSERT
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child:TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Car Name"
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(20),
                      child:TextField(
                        controller: milesController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Car Miles"
                        ),
                      ),
                    ),

                    ElevatedButton(
                        child: Text("Insert Car detaails"),
                      onPressed: (){
                          String name = nameController.text;
                          int miles = int.parse(milesController.text);
                          _insert(name, miles);
                      },
                    )
                  ],
                ),
              ),
              
              //VIEW
              Container(
                child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: cars.length + 1,
                    itemBuilder: (context, index) {
                      if(index == cars.length){
                      return ElevatedButton(
                          child: Text("refresh"),
                          onPressed: (){
                            setState(() {
                              _queryAll();
                            });
                          },
                      );
                      }
                      return Container(
                        height: 40,
                        child: Center(
                          child: Text(
                            '[${cars[index].id}] ${cars[index].name} : ${cars[index].miles} miles',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      );

                    },
                ),
              ),

              //SEARCH
              Center(
                child: Column(
                  children: [

                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: queryController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Car name"
                        ),
                        onChanged: (text){
                          if(text.length >= 2){
                            setState(() {
                              _query(text);
                            });
                          }
                          else{
                            setState(() {
                              carsByName.clear();
                            });
                          }
                        },
                      ),
                      height: 100,
                    ),

                    Container(
                      height: 300,
                      child: ListView.builder(
                          padding: EdgeInsets.all(8),
                          itemCount: carsByName.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 50,
                              margin: EdgeInsets.all(2),
                              child: Center(
                                child: Text(
                                  '[${carsByName[index].id}] ${carsByName[index].name} : ${carsByName[index].miles} miles',
                                ),
                              ),
                            );
                          },
                      ),
                    )
                  ],
                ),
              ),

              //UPDATE
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: idUpdateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Car id"
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: nameUpdateController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Car name"
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: milesUpdateController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Car miles"
                        ),
                      ),
                    ),

                    ElevatedButton(
                      child: Text("Car details"),
                      onPressed: () {
                        int id = int.parse(idUpdateController.text);
                        String name= nameUpdateController.text;
                        int miles = int.parse(milesUpdateController.text);
                        _update(id, name, miles);
                      },
                    )

                  ],
                ),
              ),


              // DELETE
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: idDeleteController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Car id",
                        ),
                      ),
                    ),

                    ElevatedButton(
                        child: Text("Delete"),
                        onPressed: (){
                          int id = int.parse(idDeleteController.text);
                          _delete(id);
                        }
                    )

                  ],
                ),
              )

            ],
          ),

        )
    );
  }

  void _insert(name, miles) async{
    Map<String,dynamic> row = {
      DatabaseHelper.columnName : name,
      DatabaseHelper.columnMiles : miles,
    };
    Car car = Car.fromMap(row);
    final id = await dbHelper.insert(car);
    _showMessageInScaffold("Inserted row id : $id", context);
  }

  void _queryAll() async{
    final allRows = await dbHelper.queryAllRows();

    cars.clear();
    allRows?.forEach((row) => cars.add(Car.fromMap(row)));
    setState(() {

    });
  }

  void _update(id,  name, miles) async{
    Car car = Car(id, name, miles);
    final rowsAffected = await dbHelper.update(car);
    _showMessageInScaffold("updated the new row", context);

    setState(() {

    });
  }

  void _query(name) async{
    final allrows = await dbHelper.queryRow(name);
    carsByName.clear();
    allrows?.forEach((row) => carsByName.add(Car.fromMap(row)));
  }

  void _delete(id) async{
    final delete = await dbHelper.delete(id);
    _showMessageInScaffold("deleted perfecto", context);
  }

}


