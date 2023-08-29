// void main(){
// var std = new Student();
// std.stdName = "Peter";
// std.stdAge = 24;
// std.stdRollNum = 90001;
// std.showStudentInfo();

// }
// class Student{
//   var stdName;
//   var stdAge;
//   var stdRollNum;
//
//   Student(String str, int age){
//     print("Student Name is : ${str}");
//     print("Student Age is : ${age}");
//   }
//
//   showStudentInfo(){
//     print("Student Name is : ${stdName}");
//     print("Student Age is : ${stdAge}");
//     print("Student RollNumber is : ${stdRollNum}");
//
//   }
// }

import 'dart:io';

/////////////////////////////////

// using the get and set generated
// void main(){
//   Student student = Student();
// }
// class Student{
//   String _name = "null";
//   int _age = 0;
//
//   String get name => _name;
//
//   set name(String value) {
//     _name = value;
//   }
//
//   int get age => _age;
//
//   set age(int value) {
//     _age = value;
//   }
// }

////////////////////////////////////////////////////

//STATIC KEYWORD
// void main(){
//   Student std1 = Student();
//   Student std2 = Student();
//   Student.stdBranch = "Computer Science";
//
//   std1.stdName = "Ben";
//   std1.stdRollNum = 90001;
//   std1.showStudentInfo();
//
//   std2.stdName = "tttt";
//   std2.stdRollNum = 9005501;
//   std2.showStudentInfo();
// }
//
// class Student {
//   static var stdBranch; // declaring a static variable
//   var stdName;
//   var stdRollNum;
//
//   showStudentInfo() {
//     print("Student Name is : ${stdName}");
//     print("Student RollNumber is : ${stdRollNum}");
//     print("Student Branch name is : ${stdBranch}");
//   }
// }

//////////////////////////////////////////

//SUPER KEYWORD

// void main(){
//
//
// }
// class Parent{
//
//   Parent(){
//     print("This is from the parent class");
//   }
// }
//
// class Child extends Parent{
//   Child():super(){
//     print("This is from the CHILD class");
//   }
// }
////////////////////////////////////////////////////////

//Inheritance
// void main(){
//   Bike b = Bike();
//   b.display();
// }
//
// class Car{
//   var speed = 180;
// }
// class Bike extends Car{
//   var speed = 50;
//
//   void display(){
//     print("the speed is ${super.speed}");
//   }
// }

////////////////////////////////////

//CASCADING Super
// void main(){
//   print("dart implicit superclass contructor");
//
//   SubClass s = SubClass();
//   s.display();
// }
//
// class SuperClass{
//   SuperClass(String msg){
//     print("this is a supercalss");
//     print(msg);
//   }
// }
//
// class SubClass extends SuperClass{
//   SubClass():super("we are calling superclass constructor explicitly"){
//     print("this is the subCLass constructor");
//   }
//   display(){
//     print("welcome to DART");
//   }
// }

///////////////////////////////////////////////////////////////////

// temp calculator
// void main(){
//   print("enter the temp in ℉");
//   int feh = stdin.readByteSync() as int;
//
//   var cel = (feh - 32)/1.8 ;
//   print(cel);
// }

////////////////////////////////////////

// addign a list
// void main(){
//   var myLsit = [1,2,3,4,5,6,7];
//
//   var sum=0;
//   for(var list in myLsit){
//     sum +=list;
//   }
//   print(sum);
// }
////////////////////////////////////////

void main(){

  var star = "*****";

  for(int i=star.length;i >= 0;i--){
    print(star.substring(0,i));
  }

}
