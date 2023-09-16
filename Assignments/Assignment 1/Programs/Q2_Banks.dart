import 'dart:math';

class SuperBank{

  SuperBank(){
    print("superBank constructor");
  }

  SuperBank.sBank(){
    print("this is superBank named constructor");
  }

  SuperBank.param(String name){
    print("my superBank name is ${name}");
  }
}

class RBC extends SuperBank{

  RBC() : super(){
    print("this rbc constructor");
  }

  RBC.worstBank() : super.sBank(){
    print("this is named constructor");
  }

  RBC.param(String name) : super.param(name){
    print(name);
  }
}

void main(){

  RBC rbc = RBC();
  RBC.worstBank();
  RBC.param("conan");

}