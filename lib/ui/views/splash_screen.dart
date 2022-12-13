import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/ui/route/route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () => Get.toNamed(splash));
    return const Scaffold(
      body: Center(
        child: Text("sadman"),
      ),
    );
  }
}
