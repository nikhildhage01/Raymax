import 'dart:async';

import 'package:flutter/material.dart';
import 'package:raymax/Home/home_screen.dart';

import 'Authentication/login.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();


}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(254, 1, 3, 20),
      child: Center(
        child: Text('RAYMAX',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
