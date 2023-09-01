// class Laptop{
//
//   Laptop({var name , var color}){
//     print("Laptop constructor");
//     print("Name : $name");
//     print("Color : $color");
//   }
// }
//
// class MacBook extends Laptop{
//   MacBook({var name ,var color}) : super(name: name, color: color){
//     print("MacBook constructor");
//   }
// }

void main(){
  // var macbook = MacBook(name: "MackBook Pro",color: "Blue");



  var macbook = MacBook();
}

class Laptop{

  Laptop(){
    print("Laptop const");
  }
  Laptop.named(){
    print("this is laptop named");

  }
}

class MacBook extends Laptop{
  MacBook() : super.named(){
    print("MacBook const");

  }
}




