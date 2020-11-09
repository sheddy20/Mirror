import 'package:Mirror/Screens/button.dart';
import 'package:Mirror/Screens/image.dart';
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
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.purple[400],
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Garden Of Oasis Mauritus',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Book Today For \$500',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            MyImages(),
            MyButton(),
          ],
        ),
      ),
    );
  }
}
