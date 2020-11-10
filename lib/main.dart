import 'package:Mirror/Drawer/drawer.dart';
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
        title: Text("Music Festival"),
        backgroundColor: Colors.blueGrey[500],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 30.0,
                  right: 10.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Welcome To Taylor's 1989 World Tour",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              MyImages(),
              Button(),
              SizedBox(height: 20.0),
              Divider(
                color: Colors.white,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Button1(),
                    ),
                  );
                },
                child: Text(
                  "Go To DatePicker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
