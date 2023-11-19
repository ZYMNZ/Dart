import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:room_database/room.dart';

class DatabaseHelper{

  static final _databaseName = "room.db";
  static final _databaseVersion = 1;

  static final table = "room_table";

  static final columnId = "id";
  static final columnName = "name";
  static final columnSSN = "ssn";
  static final columnContactPhone = "contactPhone";
  static final columnAddress = "address";

  //make it singleton class

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  static Database? db;


  Future<Database?> get database async{
    if(_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async{
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
        path,
        version: _databaseVersion,
        onCreate: _onCreate
    );
  }
  String _sql = '''
    CREATE TABLE $table(
      $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
      $columnName TEXT NOT NULL,
      $columnContactPhone TEXT NOT NULL,
      $columnSSN TEXT NOT NULL,
      $columnAddress TEXT NOT NULL
    );  
  ''';
  Future _onCreate(Database db, int version) async{
    await db.execute(_sql);
  }

  //insert
  Future<int?> insert (Room room) async{
    Database? db = await instance.database;
    return await db?.insert(table, {'name': room.name, 'contactPhone': room.contactPhone,'ssn': room.ssn,'address': room.address});
  }

  //view
  Future<List<Map<String,dynamic>>?> queryAll() async{
    Database? db = await instance.database;
    return await db?.query(table);
  }

  //update
  Future<int?> update (Room room) async{
    Database? db = await instance.database;
    int id = room.toMap()['id'];
    return await db?.update(table, room.toMap(),where: "$columnId=?",whereArgs: [id]);
  }

  //delete
Future<int?> delete(int id) async{
    Database? db = await instance.database;
    return await db?.delete(table,where: "$columnId=?", whereArgs: [id]);
}


Future<Map<String,dynamic>?> getSingleData (int id) async{
    Database? db = await instance.database;
    List<Map<String,dynamic>>? result = await db?.query(
        table,where: 'id=?' ,whereArgs: [id],limit: 1,
    );
    return result!.isNotEmpty ? result?.first : null;
}


}









