import 'package:Mirror/Screens/button.dart';
import 'package:Mirror/Screens/button1.dart';
import 'package:Mirror/Screens/tour.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mirror",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker Widgets"),
        backgroundColor: Colors.deepPurple[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Welcome To Taylors 1989 World Tour",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                decoration: TextDecoration.none,
              ),
            ),
            MyImages(),
            SizedBox(
              height: 50.0,
            ),
            Button(),
            Button1(),
          ],
        ),
      ),
    );
  }
}
