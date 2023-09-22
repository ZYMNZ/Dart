void main(){
  //int num = null; //cant assign null value  'Non-Nullable'
  String? name; // assigning null value 'Nullable'
  name = "Meow";
  name = null; // we only can assign cz we added the '?'
print(checkValue(5));
  print(checkValue(null));
}

int checkValue(int? somevalue){
  if(somevalue == null){
    return 0;
  }
  return somevalue;
}