import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import your splash screen

void main() {
  runApp(const MyApp()); // Ensure to call with 'const' to leverage const constructors
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add named 'key' parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parkey',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashScreen(), // Set the splash screen as the home widget
    );
  }
}
