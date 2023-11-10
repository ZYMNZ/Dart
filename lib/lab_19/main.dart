import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase
      .initializeApp(); // my widget should bind with the cloud before using the db
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFBPage(),
    );
  }
}

class MyFBPage extends StatefulWidget {
  const MyFBPage({super.key});

  @override
  State<MyFBPage> createState() => _MyFBPageState();
}

class _MyFBPageState extends State<MyFBPage> {
  //get the instance of the firestore that is created on the cloud

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void create() async {
    try {
      await firestore
          .collection('users') //path
          .doc('testUser') //file
          .set({'firstName': 'Elon', 'LastName': 'Peter'});
    } catch (e) {
      print(e);
    }
  }

  void read() async {
    DocumentSnapshot
        documentSnapshot; //it represents the data instance from the
    try {
      documentSnapshot =
          await firestore.collection('users').doc('testUser').get();
      print(documentSnapshot.data());
    } catch (e) {
      print(e);
    }
  }

  void update() async {
    try {
      await firestore.collection('users').doc('testUser').update({
        'LastName': 'conan',
      });
    } catch (e) {
      print(e);
    }
  }

  void delete() async{
    try{
      await firestore.collection('users').doc('testUser').delete();
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter FireStore CRUD"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: create, child: Text("Create")
            ),
            ElevatedButton(
                onPressed: read, child: Text("Read")
            ),
            ElevatedButton(
                onPressed: update, child: Text("Update")
            ),
            ElevatedButton(
                onPressed: delete, child: Text("delete")
            ),
          ],
        ),
      ),
    );
  }
}



















