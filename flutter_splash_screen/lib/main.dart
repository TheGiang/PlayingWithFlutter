import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/route_controller.dart';
import 'package:flutter_splash_screen/splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: initialSlideRoutes,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashScreen(),
    );
  }
}
