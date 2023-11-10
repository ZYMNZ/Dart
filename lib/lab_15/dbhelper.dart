import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '';

class Mydb{

  late Database db; // open the database for storing the data

  Future open() async{
    //get a location using getDatabasepath

    var databasePath = await getDatabasesPath(); 
    String path = join(databasePath,"students.db");
    db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) async{
          await db.execute('''
            create table if not exists students(
            id integer primary key,
            name text not null,
            roll_no integer not null,
            address text not null            
            );
         ''');
        },
    );
  }

  Future<Map<dynamic,dynamic>?> getStudent(int rollno) async{
    List<Map> maps = await db.query(
        "students",
        where: "roll_no = ?",
      whereArgs: [rollno]
    );
    //getting student with roll no
    if(maps.length > 0){
      return maps.first;
    }
    return null;
}

}
