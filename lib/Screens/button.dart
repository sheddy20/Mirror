import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void buttonDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Oasis Garden Reserve"),
      content: Text("Garden Reservation Booked Successfully"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("CheckOut Garden"),
        onPressed: () => buttonDialog(context),
        color: Colors.black,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0),
        ),
      ),
    );
  }
}
