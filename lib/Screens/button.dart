import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  void button(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("1989 World Tour"),
      content: Text("Ticket Booked Successfully"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        elevation: 50.8,
        child: Text("Book Ticket For 1989 Tour"),
        onPressed: () => button(context),
        color: Colors.black,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );
  }
}
