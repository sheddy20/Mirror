import 'package:flutter/material.dart';

class MyColor extends StatefulWidget {
  @override
  _MyColorState createState() => _MyColorState();
}

class _MyColorState extends State<MyColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
