// There's only public and private (put a '_' before the variable to make it private)

void main(){
  A a = A();
  a.first = "New First";
  a._second = "New second";
  print('${a.first}: ${a._second}');
}

class A{
  var first;
  var _second;

  get second => _second;

  set second(value) {
    _second = value;
  }

  // same thing for functions
}
/*
 int add (int a, int b){
  return a + b;
}
INSTEAD USE LAMBDA EXPRESSION IF IT ONLY HAS ONE EXPRESSION
int add (int a, int b) => x+y;

 */