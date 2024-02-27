import 'package:flutter/material.dart';
import 'package:realestate/screens/signUp_screen.dart';
import 'package:realestate/screens/signup_screen.dart';
import 'package:realestate/screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen() 
    );
  }
}
