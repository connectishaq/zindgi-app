import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Login%20screen.dart';

import 'dart:async';

import 'package:flutter_application_1/screens/signup%20screen.dart'; // Import the dart:async package for Timer.

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Start a timer that will navigate to the next screen after 2 seconds (2000 milliseconds).
    Timer(Duration(seconds: 3), () {
      // Replace 'YourNextScreen()' with the actual widget or route you want to navigate to.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/Image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
