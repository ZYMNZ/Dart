import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:pizza_ordering/User.dart';
 
class Dbhelper{



  late Database db; // open the database for storing the data

  Future open() async{
    //get a location using getDatabasepath

    var databasePath = await getDatabasesPath();
    String path = join(databasePath,"user.db");
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async{
        await db.execute('''
            CREATE TABLE user(
            username TEXT PRIMARY KEY,
            password TEXT NOT NULL        
            );
         ''');
      },
    );
  }

  Future<Map<dynamic,dynamic>?> getUser(String userid) async{
    List<Map> maps = await db.query(
        "user",
        where: "username = ?",
        whereArgs: [userid]
    );
    //getting student with roll no
    if(maps.length > 0){
      return maps.first;
    }
    return null;
  }









  //
  // static final _databaseName = "userdb.db";
  // static final _databaseVersion = 1;
  //
  // static final table = "user_table";
  //
  //
  // static final columnUsername = "username";
  // static final columnPassword = "password";
  //
  //
  // //make it singleton class
  //
  // Dbhelper._privateConstructor();
  //
  // static final Dbhelper instance = Dbhelper._privateConstructor();
  //
  // static Database? _database;
  // static Database? db;
  //
  //
  // Future<Database?> get database async{
  //   if(_database != null) return _database;
  //   _database = await _initDatabase();
  //   return _database;
  // }
  //
  // _initDatabase() async{
  //   String path = join(await getDatabasesPath(), _databaseName);
  //   return await openDatabase(
  //       path,
  //       version: _databaseVersion,
  //       onCreate: _onCreate
  //   );
  // }
  // String _sql = '''
  //   CREATE TABLE $table(
  //     $columnUsername TEXT PRIMARY KEY,
  //     $columnPassword TEXT NOT NULL
  //   );
  // ''';
  // Future _onCreate(Database db, int version) async{
  //   await db.execute(_sql);
  // }
  //
  // //insert
  // Future<int?> insert (User user) async{
  //   Database? db = await instance.database;
  //   print("inside thsidfjvb");
  //   return await db?.insert(table, {'username': user.username, 'password': user.password,});
  // }
  //
  // Future<Map<String,dynamic>?> getSingleData (String userid) async{
  //   Database? db = await instance.database;
  //   List<Map<String,dynamic>>? result = await db?.query(
  //     table,where: 'username=?' ,whereArgs: [userid],limit: 1,
  //   );
  //   print("inside thsidfjvb");
  //   return result!.isNotEmpty ? result?.first : null;
  // }

}
