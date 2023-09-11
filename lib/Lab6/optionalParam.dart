void main(){
  ShowMyDetails("joe","conan");
  ShowMyDetails("conan");
  ShowMyDetails("candl3","miky", 1);

}

ShowMyDetails(String name, [String lastName = 'yaman', int age = 2]){
  print(name);
  print(lastName);
  print(age);
}