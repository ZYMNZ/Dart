
void main(){
  /* // ??
  String? input = "hello";
  String msg = input ?? "Error"; // checks if the left side is null then it takes the right value, if left not null it takes it
  print(msg);
*/
/*
// ??=    'null aware'
String? input;
input = input ?? "Error";
input ??= "Error";
*/

// ?.
String? input;
print(input?.length); // only we use ?. if we didnt assign the variable and it might take null

}