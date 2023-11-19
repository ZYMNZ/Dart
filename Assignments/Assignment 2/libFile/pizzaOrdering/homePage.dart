import 'package:flutter/material.dart';
import 'package:pizza_ordering/pizzaOrder.dart';


class homePage extends StatefulWidget {
  homePage({super.key,required this.userId});

  String? userId;

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.lightBlue[300],
          appBar: AppBar(title: Text("My Application"),),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
                        child: Text("Pizzas",style: TextStyle(fontSize: 30),)
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 230),
                        child: Text(widget.userId!,style: TextStyle(fontSize: 20),)
                    ),
                  ],
                ),

                SizedBox(height: 40,),

                Expanded(
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 2,
                    crossAxisSpacing: 60,
                    mainAxisSpacing: 60,
                    padding: EdgeInsets.all(20),

                    // Generate 100 widgets that display their index in the List.
                    children: [
                      InkWell(
                        onTap: (){
                          String? pizzaName = "Veg Pizza";
                          String? description = "A delectable vegetable pizza, adorned with a medley of vibrant, fresh toppings. A crispy thin crust provides the perfect canvas for a harmonious blend of colorful bell peppers, juicy tomatoes, savory mushrooms, and aromatic basil leaves.";
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => PizzaOrderPage(userId: widget.userId,pizzaName: pizzaName,description: description),)
                          );
                        },
                        child: Ink.image(
                          image: AssetImage("assets/images/lion.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          String? pizzaName = "Cheese Pizza";
                          String? description = "Cheese pizza, a classic and timeless culinary delight, is a simple yet satisfying masterpiece that has captured the hearts and taste buds of pizza enthusiasts worldwide.";
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => PizzaOrderPage(userId: widget.userId,pizzaName: pizzaName,description: description,),)
                          );
                        },
                        child: Ink.image(
                          image: AssetImage("assets/images/lion.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          String? pizzaName = "Chicken Pizza";
                          String? description = "Chicken pizza is a delectable culinary creation that combines the savory goodness of tender, seasoned chicken with the cheesy delight of pizza. This mouthwatering dish features a golden-brown crust, perfectly baked to a crispy texture, providing the ideal foundation for a symphony of flavors.";
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => PizzaOrderPage(userId: widget.userId,pizzaName: pizzaName,description: description,),)
                          );
                        },
                        child: Ink.image(
                          image: AssetImage("assets/images/lion.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          String? pizzaName = "Meet Pizza";
                          String? description = "Indulge your taste buds in a symphony of savory flavors with our Meat Lover's Pizza. This culinary masterpiece features a mouthwatering blend of premium meats, including succulent pepperoni, savory sausage, crispy bacon, and seasoned ground beef, all generously scattered atop a bed of rich tomato sauce and melted mozzarella cheese.";
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => PizzaOrderPage(userId: widget.userId,pizzaName: pizzaName,description: description),)
                          );
                        },
                        child: Ink.image(
                          image: AssetImage("assets/images/lion.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}