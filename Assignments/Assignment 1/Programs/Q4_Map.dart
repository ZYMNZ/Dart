void main(){

  var map = {
    'Mike' : 20000,
    'Conan' : 100000,
    'Candl3' : 80000,
    'Tinty' : 50000,
    'Jim' : 70000,
    'logan' : 60000,
    'Denis' : 39000
  };

  map.forEach((key, value) {
    if(value > 50000 && value < 75000){
      print(key);
    }
  });

}