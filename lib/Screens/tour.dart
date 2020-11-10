import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        minScale: 0.1,
        maxScale: 1.6,
        child: Image.asset(
          "Assets/Images/taylor1.jpg",
        ),
      ),
    );
  }
}
