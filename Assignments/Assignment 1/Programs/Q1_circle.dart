import 'dart:io';
import 'dart:math';

void main(){
  print("Calculating Circle's area");
  print("Enter a number (radius)");
  var radius = int.parse(stdin.readLineSync()!);
  var area = (int number){
    return pi * pow(number, 2);
  };
  var calArea = area(radius).toStringAsFixed(2);
  print(calArea);
  print("\n");

  print("Calculating Circle's Circumference");
  print("Enter a number");
  var radius2 = int.parse(stdin.readLineSync()!);
  var calculate = (int num){
    return 2 * pi * num;
  };
print(calculate(radius2).toStringAsFixed(2));
}
















