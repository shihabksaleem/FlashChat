import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final VoidCallback onPressed;

  const ReusableButton(
      {required this.buttonColor, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 18),
          onPressed: onPressed,
          minWidth: MediaQuery.of(context).size.width * .8,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
