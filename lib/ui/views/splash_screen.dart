import 'package:flutter/material.dart';
import 'package:one_clicks_eats/const/app_imags.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 3), () => Get.toNamed(splash));
    return Scaffold(body: Center(child: Image.asset(AppImages.splashLogo)));
  }
}
