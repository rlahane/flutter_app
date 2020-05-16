import 'package:flutter/material.dart';
import 'package:flutterapp/common_widgets/customRaisedButton.dart';

class SocialSigninButton extends CustomRaisedButton {
  SocialSigninButton({
    Color color,
    Color textColor,
    @required String text,
    VoidCallback onPressed,
    @required String assetName,
  }) : assert(text != null),
  assert(assetName != null),
        super(
            color: color,
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  assetName,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 15.0, color: textColor),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset(
                    assetName,
                  ),
                ),
              ],
            ));
}
