import 'package:flutter/material.dart';
import 'package:qube_bidding/screens/panel_content_screen.dart';
import 'package:qube_bidding/screens/home_screen.dart';
import 'package:qube_bidding/screens/splash_screen.dart';
import 'package:qube_bidding/screens/user_screen.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
