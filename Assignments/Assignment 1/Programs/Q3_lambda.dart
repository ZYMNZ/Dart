import 'dart:io';

void main() {
  print("Enter you first number:");
  double input1 = double.parse(stdin.readLineSync()!);
  print("Enter you first number:");
  double input2 = double.parse(stdin.readLineSync()!);

  var add = (double num1, double num2) => num1 + num2;
  var subtract = (double num1, double num2) => num1 - num2;
  var multiply = (double num1, double num2) => num1 * num2;
  var divide = (double num1, double num2) => num1 / num2;
  var modulus = (double num1, double num2) => num1 % num2;

  print(add(input1,input2));
  print(subtract(input1,input2));
  print(multiply(input1,input2));
  print(divide(input1,input2).toStringAsFixed(2));
  print(modulus(input1,input2).toStringAsFixed(2));
}
