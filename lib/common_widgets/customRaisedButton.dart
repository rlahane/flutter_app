import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final double borderRadius;
  final Color color;
  final Widget child;
  final VoidCallback onPressed;
  final double height;

  CustomRaisedButton(
      {this.height: 50.0,
      this.child,
      this.color,
      this.borderRadius: 4.0,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
