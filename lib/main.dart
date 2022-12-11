import 'package:flutter/material.dart';
import 'package:one_clicks_eats/ui/views/splash_screen.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}
