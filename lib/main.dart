import 'package:Mirror/Screens/login.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text("Alerts")),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Updates")),
            ];
          }),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
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
                      letterSpacing: 4.3,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30.0),
                  child: RaisedButton(
                    child: Text("Quick service"),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.deepPurple.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: [
          Icon(Icons.home, size: 30.0, color: Colors.white),
          Icon(Icons.location_on, size: 30.0, color: Colors.white),
          Icon(Icons.add, size: 30.0, color: Colors.white),
          Icon(Icons.account_balance_wallet, size: 30.0, color: Colors.white),
          Icon(Icons.settings, size: 30.0, color: Colors.white),
        ],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.deepPurple.shade400,
        color: Colors.deepPurple.shade400,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
    );
  }
}
