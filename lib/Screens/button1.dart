import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  DateTime selectDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      helpText: "Book Tour Date",
      cancelText: "Not Ready For Tour",
      confirmText: "Book Now",
      fieldLabelText: "Booking Date",
      fieldHintText: "Month/Date/Year",
      errorFormatText: "Enter Valid Date",
      errorInvalidText: "Enter date in valid range",
      initialDatePickerMode: DatePickerMode.year,
    );
    if (picked != null && picked != selectDate) {
      setState(() {
        selectDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${selectDate.toLocal()}".split(' ')[0],
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          width: 250.0,
          height: 50.0,
          margin: EdgeInsets.only(top: 30.0),
          child: RaisedButton(
            child: Text(
              "Pick Date For Tour",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 1.9),
            ),
            onPressed: () => _selectDate(context),
            color: Colors.blueGrey[500],
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
          ),
        ),
      ],
    );
  }
}
