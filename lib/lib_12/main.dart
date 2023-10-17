import 'package:flutter/material.dart';
import 'model.dart';
import 'service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // this will initialize communication between dart layer and flutter db engine
  runApp( Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DataBase handler; //obj to use the methods = create and insert

  Future<int> addPlanets() async{
    Planets firstPlanet = Planets(id: 1, name: "Mercury" , age: 24, distancefromsun: 1000);
    Planets secondPlanet = Planets(id: 2, name: "Venus" , age: 3453, distancefromsun: 99);
    Planets thirdPlanet = Planets(id: 3, name: "Earth" , age: 765, distancefromsun: 54);
    Planets fourthPlanet = Planets(id: 4, name: "Mars" , age: 234, distancefromsun: 343);
    Planets fifthPlanet = Planets(id: 5, name: "Jupiter" , age: 345, distancefromsun: 18);

    List<Planets> planets = [firstPlanet,secondPlanet,thirdPlanet,fourthPlanet,fifthPlanet];
    return await handler.insertPlanets(planets);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    handler = DataBase();
    handler.initializedDB().whenComplete(() async{
      await addPlanets();
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: handler.retrievePlanets(),
          builder:
          (BuildContext context, AsyncSnapshot<List<Planets>> snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index)  {
                    return Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(8),
                        title: Text(snapshot.data![index].name),
                        subtitle: Text(snapshot.data![index].age.toString()),
                      ),
                    );
                  },);
            }
            else{
              return Center(
                child: CircularProgressIndicator(),
              ) ;
            }
          }
        ),
      ),
    );
  }
}

