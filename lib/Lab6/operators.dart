
void main(){
  // ?? = null operator
  print(0 ?? 1); // 0 , it always prints what on left unless it's null then it prints the one on the right
}


/*
// ??= : it assigns the variable only if it's null
void main(){
  var value;
  print(value); // null
  value ??= 5;
  print(value); // 5
  value ??= 6;
  print(value); // 5
}
 */

/*
// ?. : it catches the error and throws exception
void main(){
  var value;

  print(value?.toLowerCase()?.toUpperCase()); // output is null
}
 */