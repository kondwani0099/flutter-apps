import 'package:flutter/material.dart';

import 'package:chatgpt_app/screens/LoginScreen.dart';
import 'package:chatgpt_app/screens/HomeScreen.dart';
import 'package:chatgpt_app/screens/SlashcreenScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash', // Set the initial route to the splash screen
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}


