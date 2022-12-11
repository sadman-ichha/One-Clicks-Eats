import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      theme: ThemeData(),
    );
  }
}
