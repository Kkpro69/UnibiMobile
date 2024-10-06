import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:elearning/components/login/loginComponents.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "UNIBI",
    home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/1.png',
        ),
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: LoginScreen()),
  ));
}
