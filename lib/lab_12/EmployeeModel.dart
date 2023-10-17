class Employee{
  late final int id;
  late final String name;

  Employee({
    required this.id,
    required this.name,
  });


  Employee.fromMap(Map<String, dynamic> result) :
      id = result["id"],
      name = result['name'];


  Map<String,Object> toMap() {
    return{
      'id' : id,
      'name' : name
    };
  }

}