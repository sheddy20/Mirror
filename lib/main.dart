import 'package:Mirror/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mirror",
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MIRROR"),
        backgroundColor: Colors.deepPurple.shade400,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text("Alerts")),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Updates")),
            ];
          }),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Text(
                  "CATEGORY",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
