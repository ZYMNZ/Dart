import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'EmployeeModel.dart';

class CreatDB{

  Future<Database> initializedDB() async{
    String path = await getDatabasesPath();
    return openDatabase(
     join(path,"employee.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          "create table employee (id integer primary key, name text not null)",
        );
      },
    );
  }

  //inserting
  Future<int> insertEmployee(List<Employee> employee) async{
    int result = 0;
    
  }



}

















