import 'package:flutter/material.dart';
import 'package:totters/Screens/Home.dart';
import 'package:totters/Screens/Splash.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

