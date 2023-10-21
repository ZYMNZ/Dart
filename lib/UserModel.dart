import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Users {
  Users({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    address: Address.fromJson(json["address"]),
    phone: json["phone"],
    website: json["website"],
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "address": address!.toJson(),
    "phone": phone,
    "website": website,
    "company": company!.toJson(),
  };
}

class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"],
    suite: json["suite"],
    city: json["city"],
    zipcode: json["zipcode"],
    geo: Geo.fromJson(json["geo"]),
  );

  Map<String, dynamic> toJson() => {
    "street": street,
    "suite": suite,
    "city": city,
    "zipcode": zipcode,
    "geo": geo!.toJson(),
  };
}

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  String? lat;
  String? lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}

class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  String? name;
  String? catchPhrase;
  String? bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"],
    catchPhrase: json["catchPhrase"],
    bs: json["bs"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
  };
}



List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x))); // model class is converted to usable objects in flutter
String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



void main() => runApp(MaterialApp( home: jsonApi(),));

class jsonApi extends StatefulWidget {
  const jsonApi({super.key});

  @override
  State<jsonApi> createState() => _jsonApiState();
}

class _jsonApiState extends State<jsonApi> {

  bool loading = true;
  final String url = 'https://jsonplaceholder.typicode.com/users';
  var client = http.Client();
  List<Users> users = [];

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }
  Future<void> fetchData() async{
    http.Response response = await client.get(Uri.parse(url));
    if(response.statusCode == 200){
      List responseJson = json.decode(response.body);
      responseJson.map((e) => users.add(new Users.fromJson(e))).toList();
      setState(() {
        loading = false;
      });
    }
    else{
      throw("not connected to the server");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: loading ?
        Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ):
            ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var address = users[index].address!.geo!.lat;
                return Card(
                  child: ListTile(
                    title: Text(address!),
                  ),
                );
              },
            )
      ),
    );
  }
}
