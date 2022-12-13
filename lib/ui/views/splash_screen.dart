import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/app_imags.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(builder: (controller) {
        return Center(
            child: Image.asset(
          AppImages.splashLogo,
          height: 108.0.h,
          width: 118.0.w,
        ));
      }),
    );
  }
}
