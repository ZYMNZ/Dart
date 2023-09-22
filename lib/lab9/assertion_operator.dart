void main(){
  int? maybeValue = 5;
  //int? maybeValue = null; ERROR
  int value = maybeValue!; // allowing non-nullable to be assigned to nullable
  print(value);
}
