void main(){
  //Non-nullable variabel
  int nonNullableValue = 42;
  // You can't assign null to a non-nullable variable;
  // nonNullableValue = null; // This will result in a compilation error

  //Nullable variable
  int? nullableValue = null; //explicitly allowed
  nullableValue = 10; // You can assign a non-null


  //Nullable list
  List<String?> nullableList = ['apple', null, 'banana'];
  //you can add null or non-null values to the nullable list:
  nullableList.add(null);
  nullableList.add('cherry');

  //Non


}