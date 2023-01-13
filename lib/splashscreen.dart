import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gomart/login.dart';
import 'package:gomart/main.dart';
import 'package:gomart/product/dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginScreen(
                title: 'Login',
              )));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1bee7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/splash.png",
              width: 300.0,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            "GO FRUIT",
            style: TextStyle(
              color: Color.fromARGB(100, 26, 128, 209),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
