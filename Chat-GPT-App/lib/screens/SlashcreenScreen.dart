import 'package:flutter/material.dart';
import 'package:chatgpt_app/screens/LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to green
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0), // Add padding around the image
              child: Image.asset(
                'assets/bolt.jpg',
                width: 200.0, // Set the width as needed
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to LI Chat Ai',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green, // Set the text color to white
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 69, 39), // Set the button's background color to green
                borderRadius: BorderRadius.circular(70), // Add rounded corners
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                label: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
