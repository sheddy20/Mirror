import 'package:Mirror/Screens/login.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'models/list.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListItems> items = [
    ListItems(
      name: "Barbing",
      imageUrl: "Assets/Images/barbing.jpg",
      price: "\$400",
      rating: "45%",
    ),
    ListItems(
      name: "Braiding",
      imageUrl: "Assets/Images/pedicure.jpg",
      price: "\$200",
      rating: "45%",
    ),
    ListItems(
      name: "Menicure",
      imageUrl: "Assets/Images/hair1.jpg",
      price: "\$400",
      rating: "45%",
    ),
    ListItems(
      name: "Pedicure",
      imageUrl: "Assets/Images/hairs.jpg",
      price: "\$400",
      rating: "45%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MIRROR",
          style: TextStyle(fontFamily: "Pacifico"),
        ),
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
                      fontFamily: "Pacifico",
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
                  width: 310.0,
                  height: 405.0,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      final item = items[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage(item.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        height: 50.0,
        items: [
          Icon(Icons.home, size: 30.0, color: Colors.white),
          Icon(Icons.location_on, size: 30.0, color: Colors.white),
          Icon(Icons.shopping_cart, size: 30.0, color: Colors.white),
          Icon(Icons.account_balance_wallet, size: 30.0, color: Colors.white),
          Icon(Icons.settings, size: 30.0, color: Colors.white),
        ],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.deepPurple.shade400,
        color: Colors.deepPurple.shade400,
        animationCurve: Curves.elasticOut,
        animationDuration: Duration(milliseconds: 600),
      ),
    );
  }
}
