//List

/*
void main(){
 List<int> ages = [10,30,25];
 List<String> names = ["Raj", "John", "Rocky"];
 var mixed = [10 , "John" , 10.0];

 var list = List<int>.filled(5, 0); // to fix the size
  print(ages.indexOf(10)); // get the index number

  //immutable unchanged valued => we can do that by adding 'const'
  // mutable we can change

 // first / last / isEmpty / isNotEmpty / reverse
  List<String> drinks = ["water", "juice", "milk", "coke"];
  print("first element of the list: ${drinks.first}");
  print("last element of the list: ${drinks.last}");
  List<int> num =[];
  print(num.reversed);
  print("Is drinks Empty: " + drinks.isEmpty.toString());
  print("Is drinks not Empty: " + drinks.isNotEmpty.toString());
  print("Is num Empty: " + num.isEmpty.toString());
  print("Is num not Empty: " + num.isNotEmpty.toString());
  print("Is drinks Empty: " + drinks.isEmpty.toString());

  list.forEach((n) => print(n));
  var doubledList = list.map((n) => n * 2);

  //... 'spread'
List list1 = ["Mango", "Apple"];
List list2 = ["Orange", "Avocado", "Grape"];
List list3 = ["Lemon"];
//combining lists
var comnbinedList = [...list1, ...list2, ...list3];

print(comnbinedList);

//extending newList using spread operator
List newList = ["One", ...list1];
print(newList);

}
*/

//if in a list
/*
void main(){
  bool sad = false;
  var cart = ["milk", "ghee", if(sad) "beer"];
  print(cart);
}
 */

//filtering in a list
void main() {
  List<int> list = [1, 2, 3, 34, 5, 45, 65, 34, 78, 56];
  List<int> even = list.where((number) => number.isEven).toList(); // we are filtering the even numbers
  print(even);
}
