import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlcarcrud_thirteenth_flutter/car.dart';

class DatabaseHelper{

  static final _databaseName = 'cardb.db'; 
  static final _databaseversion = 1;

  static final table = 'cars_table';

  static final columnId = 'id';
  static final columnName = 'name';
  static final columnMiles = 'miles';

  //make this a singleton class

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  //only have single reference to the database
  static Database? _database;

  Future<Database?> get database async{
  if(_database != null) return _database;
  //lazily instantiate the db the first time it is accessed
  _database = await _initDatabase();
  return _database;
}
  //this method opens the database and creates if it doesnt exist

_initDatabase() async{
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
        path,
        version: _databaseversion,
        onCreate: _onCreate
    );
}

// sql code to create th database table

Future _onCreate (Database db, int version) async {
    await db.execute('''
        CREATE TABLE $table (
         $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
         $columnName TEXT NOT NULL,
         $columnMiles INTEGER NOT NULL
        )
    ''');
  }

  //we are creating helper methods to apply CRUD properties

//1. insert method

Future <int?> insert(Car car) async{
    Database? db = await instance.database;
    return await db?.insert(table, {'name' : car.name , 'miles': car.miles});
}

// all rows are returned as a list of maps, where each map is a key-value list of columns
//2. View
Future<List<Map<String, dynamic>>?> queryAllRows() async{
    Database? db = await instance.database;
    return await db?.query(table);
}

//3. Search
//search for any rows on the argument received
Future<List<Map<String, dynamic>>?> queryRow(name) async{
  Database? db = await instance.database;
  return await db?.query(table,where: "$columnName LIKE '%$name%'");
}

//4. update method

Future<int?> update(Car car) async {
    Database? db = await instance.database;
    int id = car.toMap()['id'];
    return await db?.update(table, car.toMap(),where: "$columnId = ?", whereArgs: [id]);
}

//5. delete method

Future<int?> delete(int id) async{
    Database? db = await instance.database;
    return await db?.delete(table,where: "$columnId = ?", whereArgs: [id]);
}



}

