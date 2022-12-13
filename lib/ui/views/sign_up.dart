import 'package:flutter/material.dart';
import 'package:one_clicks_eats/const/app_imags.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage(AppImages.splashLogo),
          ),
        ],
      ),
    );
  }
}
