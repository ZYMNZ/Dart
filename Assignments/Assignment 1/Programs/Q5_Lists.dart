void main(){
  List<int> numbers = [21,43,2,52,65,3,77,82,1];

  numbers.add(100); //adds at the end
  numbers.insert(3,99); // inserts at a specific index
  numbers[4] = 55; // update
  numbers.remove(7); //delete

  print(numbers);

  List<String> names = ['Miky','jake','peter','jose','mowkly','conan','harry'];

  names.add("yaman"); //adds at the end
  names.insert(3,"kante"); // inserts at a specific index
  names[2] = "boojie"; // update
  names.remove(4); //delete

  print(names);


}