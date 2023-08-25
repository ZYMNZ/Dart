
void main(){
  void number(int n){
    //Check the given number is even or odd
    if(n%2==0){
      print("The given number is even");
    }
    else{
      print("the number ios odd");
    }
  }
  number(20);
  ////////////////////////////

  print("Example of add two number using the function");
  //Creating the function
  int sum(int a, int b){
    //function Body
    int result;
    result = a+b;
    return result;
  }
  //WE are calling a function and storing a result in variable c
  var c = sum(30,20);
  print("The sum of two number is: ${c}");

///////////////////////////////////

var list = ["James", "Patrick", "Yaman", "Fadi"];
print("Example of anonymous function");
list.forEach((item) {
  print('${list.indexOf(item)} : $item');
});
/////////////////////////
  //Anonymous function using
  var multiply = (int a , int b){
    return a * b;
  };
var result = multiply(5,3);
print(result);
//////////////
// Anonymous function using lambda expression;
var multiply2 = (int a , int b) => a * b;

var result2 = multiply2(5,3);
print(result2);
////////////////////////////////////

int factorial(int num){
  if(num <=1){
    return 1;
  }
  return num*factorial(num-1);
}

var num = 5;
var fact = factorial(num);
print("Factorial of 5 is: ${fact}");
///////////////////////////////////////




}

class Student{
  var stdName;
  var stdAge;
  var stdRollNum;

  showStdInfo(){
    print("Student Name is: ${stdName}");
    print("Student Name is: ${stdAge}");
    print("Student Name is: ${stdRollNum}");
  }

}



















