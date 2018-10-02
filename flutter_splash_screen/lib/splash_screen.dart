import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/Constants.dart';
import 'package:flutter_splash_screen/presenter/splash_screen_presenter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> implements SplashContract {
  SplashPresenter _presenter;

  @override
  void initState() {
    super.initState();
    _presenter = SplashPresenter(this);

    Timer(Duration(milliseconds: 200), () {
      _presenter.fetchSomething();
    });
  }

  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.9],
          colors: [
            Color(0xFFFC5C7D),
            Color(0xFF6A82FB),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 90.0),
      child: Image.asset(
        Constants.ic_logo,
        fit: BoxFit.scaleDown,
      ),
    );
  }

  @override
  void onHideLoading() {
    // TODO: implement onHideLoading
  }

  @override
  void onShowLoading() {
    // TODO: implement onShowLoading
  }

  @override
  void goToNextScreen(bool shouldLogin) {
    if (shouldLogin) {
      Navigator.pushReplacementNamed(context, Constants.login_screen);
    } else {
      Navigator.pushReplacementNamed(context, Constants.main_screen);
    }
  }
}
