import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
  
        child: Image.asset(

          'lib/assets/sensailogo.png',
          width: 150, // Adjust the size as needed
          height: 150, // Adjust the size as needed
        ),
      ),
    );
  }
}