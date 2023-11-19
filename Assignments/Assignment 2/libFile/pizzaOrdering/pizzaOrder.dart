import 'package:flutter/material.dart';
import 'package:pizza_ordering/homePage.dart';
import 'package:pizza_ordering/resultPage.dart';


class PizzaOrderPage extends StatefulWidget {
   PizzaOrderPage({super.key, required this.userId,required this.pizzaName,required this.description});

  String? userId;
  String? pizzaName;
  String? description;

  @override
  State<PizzaOrderPage> createState() => _PizzaOrderPageState();
}

class _PizzaOrderPageState extends State<PizzaOrderPage> {

  int price = 0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    if(price<0){
      price=0;
    }
  }
  //size

  //small
  @override
  void addSmallSize() {
    setState(() {
      price+=10;
    });
  }
  void subSmallSize() {
    setState(() {
      if(price <=0){
        price=0;
      }
      else price-=10;
    });
  }
  //Med
  @override
  void addMedSize() {
    setState(() {
      price+=20;
    });
  }
  void subMedSize() {
    setState(() {
      if(price <=0){
        price=0;
      }
      else price-=20;
    });
  }

  //Large
  @override
  void addLargeSize() {
    setState(() {
      price+=30;
    });
  }
  void subLargeSize() {
    setState(() {
      if(price <=0){
        price=0;
      }
      else price-=30;
    });
  }

  //Toppings

  //small
  @override
  void addSmallTopping() {
    setState(() {
      price+=2;
    });
  }
  void subSmallTopping() {
    setState(() {
      if(price <=0){
        price=0;
      }
      else price-=2;
    });
  }
  //Med
  @override
  void addMedTopping() {
    setState(() {
      price+=3;
    });
  }
  void subMedTopping() {
    setState(() {
      if(price <=0){
        price=0;
      }
      else price-=3;
    });
  }

  //Large
  @override
  void addLargeTopping() {
    setState(() {
      price+=5;
    });
  }
  void subLargeTopping() {
    setState(() {
      if(price <=0){
        price=0;
      }
      else price-=5;
    });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[300],
    body: Container(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10,left: 20),
                  child: Text(widget.pizzaName!,style: TextStyle(fontSize: 30),)
              ),

              Container(
                  margin: EdgeInsets.only(top: 15,right: 45),
                  child: Text(widget.userId!,style: TextStyle(fontSize: 15),)
              ),
            ],
          ),
          SizedBox(height: 15,),
          
          Image.asset("assets/images/lion.jpg", height: 150,),
          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text("${widget.description}"),
          ),
          
          Row(
            children: [
              Text("Size"),
              SizedBox(width: 60,),
              Text("Small"),
              SizedBox(width: 70,),
              Text("Medium"),
              SizedBox(width: 70,),
              Text("Big"),
            ],
          ),

          SizedBox(height: 30),

          Row(
            children: [
              Text("Price"),
              SizedBox(width: 50,),
              Text("10CAD"),
              SizedBox(width: 70,),
              Text("20CAD"),
              SizedBox(width: 70,),
              Text("30CAD"),
            ],
          ),

          SizedBox(height: 40),

          Row(
            children: [
              Text("Quantity"),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                    onPressed: (){
                      addSmallSize();
                    },
                    child: Icon(Icons.add,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                    onPressed: (){
                      subSmallSize();
                    },
                    child: Icon(Icons.remove,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),

             SizedBox(width:10,),

              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                    onPressed: (){
                      addMedSize();

                    },
                    child: Icon(Icons.add,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                    onPressed: (){
                      subMedSize();
                    },
                    child: Icon(Icons.remove,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),

             SizedBox(width:10,),

              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                    onPressed: (){
                        addLargeSize();
                    },
                    child: Icon(Icons.add,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                    onPressed: (){
                          subLargeSize();
                    },
                    child: Icon(Icons.remove,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),

             SizedBox(width:10,),

            ],
          ),

          //////////////TOPPINGS/////////////////
          SizedBox(height:30,),

          Row(
            children: [
              Text("Toppings"),
              SizedBox(width: 30,),
              Text("Small 2 cad"),
              SizedBox(width: 40,),
              Text("Medium 3 cad"),
              SizedBox(width: 40,),
              Text("Big 5 cad"),
            ],
          ),

          SizedBox(height: 30),

          Row(
            children: [
              Text("Quantity"),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                  onPressed: (){
                    addSmallTopping();
                  },
                  child: Icon(Icons.add,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                  onPressed: (){
                    subSmallTopping();

                  },
                  child: Icon(Icons.remove,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),

              SizedBox(width:10,),

              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                  onPressed: (){
                    addMedTopping();
                  },
                  child: Icon(Icons.add,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                  onPressed: (){
                    subMedTopping();
                  },
                  child: Icon(Icons.remove,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),

              SizedBox(width:10,),

              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                  onPressed: (){
                      addLargeTopping();
                  },
                  child: Icon(Icons.add,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                child: ElevatedButton(
                  onPressed: (){
                    subLargeTopping();
                  },
                  child: Icon(Icons.remove,size: 20),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  ),
                ),
              ),

              SizedBox(width:10,),

            ],
          ),

          SizedBox(height:50,),

          Text("${price}"),

          Divider(
            thickness: 1,
            indent: 100,
            endIndent: 100,
            color: Colors.black,
          ),

          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => resultPage(price: price, userId: widget.userId),
                )
            );
          }, child: Text("ORDER"))

        ],
      ),
    )
    );
  }
}





















