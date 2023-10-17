import "package:path/path.dart";
import 'package:sqflite/sqflite.dart';
import 'model.dart';

class DataBase {
  Future<Database> initializedDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'planets.db'), // to create the database on that path, //join creates the path of the database location which is planets.db in this case
      version: 1, //
      onCreate: (Database db, int version) async { // to create the database
        await db.execute(
          "create table planets (id integer primary key, name text not null, age integer not null, distancefromsun integer not null)",
        );
      },
    );
  }

  // insert data
  Future<int> insertPlanets(List<Planets> planets) async {
    int result = 0;
    final Database db = await initializedDB(); //this will get an instance of the database
    for (var planet in planets) {
      result = await db.insert('planets', planet.toMap(), //planets is the name ofthe table , we have to change the obj to ToMap
          conflictAlgorithm: ConflictAlgorithm.replace); // tp throw an error in case smth happen
    }
    return result;
  }

  //retrieve data

Future<List<Planets>> retrievePlanets() async{
    final Database db = await initializedDB(); // initialize
    final List<Map<String,Object?>> queryresult = await db.query("planets"); //
    return queryresult.map((e) => Planets.fromMap(e)).toList();
}



}













