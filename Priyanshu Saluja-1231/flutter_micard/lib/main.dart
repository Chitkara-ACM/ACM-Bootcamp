import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "APP",
      theme: new ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(
            "MI CARD ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Center(
                child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/DSC_2543.JPG"))),
            Text(
              "Priyanshu Saluja",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "CSE STUDENT",
              style: TextStyle(fontSize: 18.0, letterSpacing: 3.0),
            ),
            Container(
                color: Colors.orange[200],
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                margin: EdgeInsets.all(10.0),
                height: 45.0,
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("+91 9xxxxxxxxx"),
                  ],
                )),
            Container(
                color: Colors.orange[200],
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                margin: EdgeInsets.all(10.0),
                height: 45.0,
                child: Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("salujapriyanshu8@gmail.com"),
                  ],
                )),
            Container(
                color: Colors.orange[200],
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                margin: EdgeInsets.all(10.0),
                height: 45.0,
                child: Row(
                  children: [
                    Icon(Icons.school),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("Chitkara University"),
                  ],
                )),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: FloatingActionButton(
                  backgroundColor: Colors.green, child: Icon(Icons.computer)),
            )
          ],
        ),
      ),
    );
  }
}
