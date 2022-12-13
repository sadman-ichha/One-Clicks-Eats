import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_clicks_eats/const/app_imags.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.0.h),
            Center(
              child: Image(
                height: 94.0.h,
                width: 86.0.w,
                image: AssetImage(AppImages.splashLogo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
