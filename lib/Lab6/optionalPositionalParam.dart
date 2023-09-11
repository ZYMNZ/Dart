/*
void main(){
  test_param(3);

  test_param2(123,321);
}
test_param(n1,[s1]){
  print(n1);
  print(s1);
}
test_param2(n1,[s1]){
  print(n1);
  print(s1);
}
*/

void main(){
  print(pow(2,2));
  print(pow(2,3));
  print(pow(3));
}

int pow(int x, [int y= 2]){
  int r = 1;
  for(int i =0; i<y;i++){
    r+=x;
  }
  return r;
}



