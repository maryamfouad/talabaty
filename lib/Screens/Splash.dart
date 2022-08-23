import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:totters/Screens/Home.dart';
import 'Home.dart';

class Splash extends StatefulWidget {
  const Splash({Key ? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("images/talabaty.png" , fit: BoxFit.cover,),

      backgroundColor: Colors.white,
      showLoader: false,
      //loadingText: Text("Loading..."),
      navigator: HomePage(),
      durationInSeconds: 5,
    );
  }
}
