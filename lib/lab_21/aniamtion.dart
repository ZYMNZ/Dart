import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimationDemo(),
    );
  }
}

class MyAnimationDemo extends StatefulWidget {
  const MyAnimationDemo({super.key});

  @override
  State<MyAnimationDemo> createState() => _MyAnimationDemoState();
}

class _MyAnimationDemoState extends State<MyAnimationDemo>
with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  // late Animation<double?> _animation;
  late Animation<Color?> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initialize animation controller
    _controller = AnimationController(
      vsync: this, duration: Duration(milliseconds: 5), //animatoin duration
    );

    //create a Tween animation from 0.0 to 1.0
    // _animation = Tween<double>(begin: 0.0,end: 1.0).animate(_controller);

    _animation =
    ColorTween(begin: Colors.green, end: Colors.lime).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.addListener(() {
  if(_controller.status == AnimationStatus.completed){
    _controller.reverse();
  }
  else if(_controller.status == AnimationStatus.dismissed){
    _controller.forward();
  }
});



  }

  void animateColor() {
    _controller.forward();
  }

//add a listener to check the ball hitting the obstacle or wall or end of screen
// _controller.addListener(() {
//   //reverse animation when the ball hits the obstacle
//   if(_controller.status == AnimationStatus.completed || _controller.status == AnimationStatus.dismissed){
//     _controller.reverse();
//   }
// });

// _controller.addListener(() {
//   if(_controller.status == AnimationStatus.completed){
//     _controller.reverse();
//   }
//   else if(_controller.status == AnimationStatus.dismissed){
//     _controller.forward();
//   }
// });

//setup the animation curve for bouncing effect
// _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
//start the animation
// _controller.forward();
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation Demo 1"),),
      body:
      /*Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            // use the animated value to update the position of the ball
            return Transform.translate( //
                offset: Offset(200 * _animation.value,0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green
                  ),
                ),
            );

          },
        ),
      ),
      */
      ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            height: 400,
            // color: _animation.value,
            child: ElevatedButton(
              onPressed: () => {animateColor()},
              child: Text(""),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(_animation.value)),
            ),
          )
        ],
      )

    );
  }
}






















