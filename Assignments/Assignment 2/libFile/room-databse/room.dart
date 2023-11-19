import 'package:room_database/DatabaseHelper.dart';

class Room{
  int? id;
  String? name;
  String? ssn;
  String? contactPhone;
  String? address;

  Room(this.id,this.name,this.contactPhone,this.ssn,this.address);

  Room.fromMap(Map<String,dynamic> map){
    id = map['id'];
    name = map['name'];
    contactPhone = map['contactPhone'];
    ssn = map['ssn'];
    address = map['address'];
  }

  Map<String,dynamic> toMap(){
    return{
      DatabaseHelper.columnId : id,
      DatabaseHelper.columnName : name,
      DatabaseHelper.columnSSN : ssn,
      DatabaseHelper.columnContactPhone : contactPhone,
      DatabaseHelper.columnAddress : address,
    };
  }

}
