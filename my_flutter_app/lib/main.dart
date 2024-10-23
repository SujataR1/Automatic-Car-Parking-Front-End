import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Ensure this file exists and the path is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PARKY App', // App title
      theme: ThemeData(
        primaryColor: const Color(0xFF221E5E), // Changed primary color to #221E5E
        scaffoldBackgroundColor: Colors.white, // Optional: Background color for scaffold pages
      ),
      home: const SplashScreen(), // Set the splash screen as the home page
    );
  }
}
