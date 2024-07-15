import 'package:flutter/material.dart';
import 'signup.dart'; // Import SignUpScreen
import 'login1.dart' as login; // Import LoginScreen

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Go to SignUpScreen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login.LoginScreen),
                );
              },
              child: Text('Go to LoginScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
