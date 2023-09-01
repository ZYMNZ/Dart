void main(){
  int r1 = apply(3, inc);

}


  int inc(int x) => ++x;
  int dec(int x) => ++x;

  int apply(int x, Function f){
    return f(x);
  }


//check th4 slide