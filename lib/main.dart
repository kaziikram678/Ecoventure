import 'package:ecoventure/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EcoVentureApp());
}

class EcoVentureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EcoVenture",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF081A2B),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}