import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 650.0,
            child: RotatedBox(
              quarterTurns: 2,
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
