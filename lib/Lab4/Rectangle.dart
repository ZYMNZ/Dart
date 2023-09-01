class Rectangle{
  // late means that we'll give it a value later. It forces the compiler to wait before assigning the variables
  late double width;
  late double height;

  Rectangle(this.width,this.height);

  Rectangle.square(double sideLength){
    width = sideLength;
    height = sideLength;
  }

  Rectangle.withDimension(this.width, this.height);

  double calculateArea(){
    return width * height;
  }
}

void main(){
  final rectangle = Rectangle(4.0, 6.0);
  final square = Rectangle.square(5.0);
  final rectangle2 = Rectangle.withDimension(3.0, 9.6);

  print('rectangle 1 area : ${rectangle.calculateArea()}');
  print('square area : ${square.calculateArea()}');
  print('rectangle 2 area : ${rectangle2.calculateArea()}');
}