import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _updateLoginState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(Constants.sp_have_data, "just login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: RaisedButton(
      onPressed: () {
        _updateLoginState();
        Navigator.pushReplacementNamed(context, Constants.main_screen);
      },
      child: Text("Press to Login"),
    )));
  }
}
