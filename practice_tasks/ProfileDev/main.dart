import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.purple[700],
                  backgroundImage: NetworkImage("https://t2.genius.com/unsafe/425x425/https%3A%2F%2Fimages.genius.com%2Fb7856ba4b9670f426d8b347b3fc20a52.403x363x1.png"),
                ),
                
                Text("AmirHossein Bayat",style:
                  GoogleFonts.pacifico(
                      fontSize: 30,color: Colors.white
                  ),
                ),

                Text("iOS & Android Developer",
                  style: GoogleFonts.roboto(
                      fontSize: 20,color: Colors.white,letterSpacing: 2
                  ),
                ),

                Divider(
                  color: Colors.white,
                  endIndent: 100,
                  indent: 100,
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    leading: Icon(Icons.phone,color: Colors.purple,),
                    tileColor: Colors.white,
                    title: Text("+98 922 505 8169",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    leading: Icon(Icons.email,color: Colors.purple,),
                    tileColor: Colors.white,
                    title: Text("AmirBayat.dev@gmail.com",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListTile(
                    leading: Icon(Icons.account_circle,color: Colors.purple,),
                    tileColor: Colors.white,
                    title: Text("@CodeWithFlexz",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),

                
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}


