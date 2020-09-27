import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String buttonText;
  final Color textColor;
  final Function onPress;
  RoundedButton({
    this.color,
    this.buttonText,
    this.textColor,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 260.0,
          height: 55.0,
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor
            ),
          ),
        ),
      ),
    );
  }
}