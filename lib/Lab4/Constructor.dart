
/*
 3 types of constructor
 -default same as java
 -parameterized same as java
 -Named U HAVE TO NAME THE CONSTRUCTOR (when overriding)
 */

void main(){
  Student student = Student();
  Student student2 = Student.namedConst("Alawi");

}

class Student{

  Student(){
    print('hala meww 11');
  }
  
  Student.namedConst(String name){
    print(name);
  }
}