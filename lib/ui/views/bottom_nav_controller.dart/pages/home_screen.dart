import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0.h),
            Text(
              "Let's Find Quality Food 😋🍴",
              style: AppStyles.myTitleTextStyle,
            ),
            SizedBox(height: 20.0.h),
          ],
        ),
      ),
    );
  }
}
