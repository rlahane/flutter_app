import 'package:flutter/material.dart';
import 'package:flutterapp/common_widgets/customRaisedButton.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton(
  {String text, Color color, Color textColor, VoidCallback onPressed})
      : super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 15.0,
            ),
          ),
          color:color,
          onPressed:onPressed,
        );
}
