// this is { } curly braces
/*
void main(){
  test_param(123);
  test_param(123, s1:"hello");
  test_param(123, s2: "this is s2", s1: "world"); // we can move the params around bcz the compiler are calling them by name
}

test_param(n1,{s1,s2}){
  print(n1);
  print(s1);
}
*/

//with default value
void main(){
  test_param(123);
}
test_param(n1,{s1=12}){
  print(n1);
  print(s1);
}
