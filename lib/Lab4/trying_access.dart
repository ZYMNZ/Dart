import 'access_modifier.dart';

void main(){
  A a = A();
  a.first = "New First";
  //a._second = "New second"; // doesn't work bcz it's private
  a.second = "Wassap";
 // print('${a.first}: ${a._second}');  //doesn't work bcz it's private
  print('${a.first}: ${a.second}');
}