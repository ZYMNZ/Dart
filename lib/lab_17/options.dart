import 'package:flutter/material.dart';
enum Options {search,upload,copy,exit}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState(); 
}

class _MyAppState extends State<MyApp> {
  var _popUpMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.red;
  var appbarHeight = AppBar().preferredSize.height;



    _buildAppbar(){
      return AppBar(
        title: Text(
          'Pop up Menu',
          style: TextStyle(color: Colors.white,fontSize: 16),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value){
              _onMenuItemSelected(value as int);
            },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                )
              ),
              itemBuilder: (context) => [
                  _buildPopUpMenuItem('Search', Icons.search,Options.search.index),
                  _buildPopUpMenuItem('Upload', Icons.upload,Options.upload.index),
                  _buildPopUpMenuItem('Copy', Icons.copy,Options.copy.index),
                  _buildPopUpMenuItem('Exit', Icons.exit_to_app,Options.exit.index),
              ]
          )

        ],
      );
    }

    PopupMenuItem _buildPopUpMenuItem(String title , IconData icondata, int position){
      return PopupMenuItem(
          value: position,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icondata,
                color: Colors.black,
              ),
              Text(title)
            ],
          )
      );
    }

    _onMenuItemSelected(int value){
      setState(() {
        _popUpMenuItemIndex = value;
      });
      if(value == Options.search.index){
        _changeColorAccordingToMenuItem = Colors.yellow;
      }else if(value == Options.upload.index){
        _changeColorAccordingToMenuItem = Colors.green;
      }else if(value == Options.copy.index){
        _changeColorAccordingToMenuItem = Colors.purple;
      }else{
        _changeColorAccordingToMenuItem = Colors.blue;
      }
    }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Demo Pop up Menu",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: _buildAppbar(),
        body: Container(
          color: _changeColorAccordingToMenuItem,
        ),
      ),
    );
  }
}
