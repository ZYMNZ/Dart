import 'package:pizza_ordering/Dbhelper.dart';

class User {
  String? username;
  int? password;

  User(this.username, this.password);

  User.fromMap(Map<String, dynamic> map){
    username = map['username'];
    password = map['password'];
  }

  Map<String, dynamic> toMap() {
    return {
      // Dbhelper.columnUsername: username,
      // Dbhelper.columnPassword: password,
    };
  }
}