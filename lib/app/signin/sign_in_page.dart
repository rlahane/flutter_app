import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/app/signin/sign_in_button.dart';
import 'package:flutterapp/app/signin/social_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> _signInAnonymously() async{
  final authUser = await FirebaseAuth.instance.signInAnonymously();
  print('User details : ${authUser.user.uid}');
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Time Tracker"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            SocialSigninButton(
                text: "Sign in with Google",
                textColor: Colors.black87,
                color: Colors.white,
                assetName: "images/google-logo.png",
                onPressed: () {
                  print("Sign in button pressed");
                }),
            SizedBox(
              height: 8.0,
            ),
            SocialSigninButton(
                text: "Sign in with Facebook",
                textColor: Colors.white,
                color: Color(0xFF334D92),
                assetName: "images/facebook-logo.png",
                onPressed: () {
                  print("Sign in button pressed");
                }),
            SizedBox(
              height: 8.0,
            ),
            SignInButton(
                text: "Sign in with email",
                textColor: Colors.white,
                color: Colors.teal.shade700,
                onPressed: () {
                  print("Sign in button pressed");
                }),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Or",
              style: TextStyle(color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            SignInButton(
                text: "Sign in anonymous",
                textColor: Colors.black87,
                color: Colors.lime.shade700,
                onPressed: () {
                  print("Sign in anonymously button pressed");
                  _signInAnonymously();
                }),
          ],
        ),
      ),
    );
  }
}
