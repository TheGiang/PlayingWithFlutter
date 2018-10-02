import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/Constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: RaisedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, Constants.main_screen);
      },
      child: Text("Press to Login"),
    )));
  }
}
