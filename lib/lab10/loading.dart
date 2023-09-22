import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
       home: MyApp()
     )
  );
}
//

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Icon fab = Icon( //fab = floating action button
    Icons.refresh,
  );

  bool showProgress = true;

  void toggleSubmitState(){
    setState(() {
      showProgress = !showProgress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ProgressBar"),
        ),
      body: Center(
        child: showProgress
        ? CircularProgressIndicator()
            :Text("Click on the refresh button below",
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: fab,
          onPressed: () => setState(() {
            toggleSubmitState();
            if(showProgress){
              fab = Icon(
                Icons.stop,
              );
            }
            else{
              fab = Icon(Icons.refresh);
            }
          }),
      ),
    );
  }
}

















