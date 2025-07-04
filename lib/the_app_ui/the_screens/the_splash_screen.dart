import 'package:flutter/material.dart';
import 'package:the_graduation_project/the_app_ui/the_screens/the_home_screen.dart';
import '../../the_app_utilizations/the_app_assets.dart';

class TheSplashScreen extends StatelessWidget {
  static String theRoutName = '/'; // The initial route
  const TheSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context,HomeScreen.theRouteName);
    });
    return Scaffold(
      body: Image.asset(TheAssets.theSplashScreen),
    );
  }
}
