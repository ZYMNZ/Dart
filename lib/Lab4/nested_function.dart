void main(){
  String buildMessage(String name,String occupation){
    return "$name is a $occupation";
  }
  var name = "meiw";
  var occupation = "meiw";

  var msg = buildMessage(name,occupation);
  print(msg);
}