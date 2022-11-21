import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final Function callback;
  const CalculatorButton(
      {super.key,
      required this.text,
      required this.fillColor,
      required this.textColor,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            backgroundColor: Color(fillColor),
            foregroundColor: Color(textColor),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}
