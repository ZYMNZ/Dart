import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Data Picker Demo",
        home: DatePickerHome()
    );
  }
}


class DatePickerHome extends StatefulWidget {
  const DatePickerHome({super.key});

  @override
  State<DatePickerHome> createState() => _DatePickerHomeState();
}

class _DatePickerHomeState extends State<DatePickerHome> {
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async{
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2021),
        lastDate: DateTime(2024));
    if(pickedDate != null && pickedDate != currentDate){
      setState(() {
        currentDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Date Picker")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(currentDate.toString()),
            ElevatedButton(onPressed: (){
              _selectDate(context);
            }, child: Text("Select the date"))
          ],
        ),
      ),
    );
  }
}















