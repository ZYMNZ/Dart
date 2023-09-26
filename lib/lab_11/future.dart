/*
void main(){
  print("start fetching recipes");
  Future.delayed(Duration(seconds : 5), (){
    print("recipes fetched");
  }).then((_) {
    print("after fetching recipes");
  }); // then will get executed after the future

  String computation = "a random computation";
  print(computation);

}
*/

/*
void main(){
  print("start fetching recipes");
  Future.delayed(Duration(seconds : 1), (){
    print("recipes fetched");
  }).then((_) {
    print("after fetching recipes");
   // then will get executed after the future

  String computation = "a random computation";
  print(computation);
});
}
*/

// async-await
//await means everything after have to wait until it finishes executing
/*
void main() async{
  print("start fetching recipes");
  await Future.delayed(Duration(seconds : 1), (){
    print("recipes fetched");
  }).then((_) {
    print("after fetching recipes");
  }); // then will get executed after the future

  String computation = "a random computation";
  print(computation);

}
*/

//without await
/*
void main() async{
  print("start fetching recipes");
   Future.delayed(Duration(seconds : 1), (){
    print("recipes fetched");
  }).then((_) {
    print("after fetching recipes");
  }); // then will get executed after the future

  String computation = "a random computation";
  print(computation);

}
*/

// no need for then bcz we have await
/*
void main() async{
  /*
 await  Future.delayed(Duration(seconds : 1), (){
    print("inside delayed");
  }).then((_) {
    print("inside then");
  }); // then will get executed after the future

 //no need for then because both await is already there

  print("after delayed");
   */

  await  Future.delayed(Duration(seconds : 1), (){
    print("inside delayed");
  });
  print("inside then");
  print("after delayed");

}

 */


//no need for the second then await can do ti's job
/*
void main() {
/*
// no need for the 2nd 'then'
  Future.delayed(Duration(seconds : 1), (){
    print("inside delayed 1 ");
  }).then((_) {
    print("inside then 1");
    Future.delayed(Duration(seconds : 1), (){
      print("inside delayed 2");
    }).then((_) {
      print("inside then 2 ");
    });
  });

  print("after delayed");
  */

  Future.delayed(Duration(seconds : 1), (){
    print("inside delayed 1 ");
  }).then((_) async {
    print("inside then 1");

    await Future.delayed(Duration(seconds : 1), (){
      print("inside delayed 2");
    }).await ({
      print("inside then 2 ");
    });
  });
  print("after delayed");

}
*/

//await more efficient than 'then'
/*
/*
void main (){
  print("start");
  fetchUserData().then((user){
    print('Receiving user: $user');
  }).catchError((error){

  });
  print("end");

}
Future<String> fetchUserData() async{
    await Future.delayed(Duration(seconds: 2));
    return "John doe";
  }
*/
void main (){
  print("start");
  try{
    final user = await  fetchUserData();
    print('Recieving user: $user');
  }catch(error){

  }
  print("end");
  print("Error");

}
Future<String> fetchUserData() async{
  await Future.delayed(Duration(seconds: 2));
  return "John doe";
}
*/

//async*(group of data)  for streams
//yield
/*
void main(){
  final stream = countStream(5);
  stream.listen((data) { // needs yield
    print("data $data");
  });
}
Stream<int> countStream(int max) async*{
  for(int i = 1; i<= max ; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i; // returns the data to the listen
  }
}
*/



