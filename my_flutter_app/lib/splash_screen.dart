import 'package:flutter/material.dart';
import 'dart:async'; // For the timer

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _carPosition = 0; // Initial position at the bottom
  bool _showText = false; // Control when to show the text

  @override
  void initState() {
    super.initState();
    // Move the car from bottom to top over time
    Timer.periodic(const Duration(milliseconds: 10), (Timer timer) {
      setState(() {
        _carPosition += 5; // Move the car upwards faster
        if (_carPosition > MediaQuery.of(context).size.height) {
          // Stop the car after it moves off-screen
          timer.cancel();
          setState(() {
            _showText = true; // Show the text after the car has moved off-screen
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF221E5E), // Background color #221E5E
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Car animation
          AnimatedPositioned(
            duration: const Duration(milliseconds: 10),
            bottom: _carPosition, // Move the car upwards
            child: Image.asset("assets/images/car.png", height: 200), // Car image
          ),

          // Show "PARKY" in the middle only after the car has moved off
          if (_showText)
            const Center(
              child: Text(
                "PARKY",
                style: TextStyle(
                  fontSize: 50, // Increased font size for better visibility
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
