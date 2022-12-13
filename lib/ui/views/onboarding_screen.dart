import 'package:flutter/material.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(color: Colors.amber),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [Text("we have quality  Chief",style: AppStyles,)],
            ),
          )
        ],
      ),
    );
  }
}
