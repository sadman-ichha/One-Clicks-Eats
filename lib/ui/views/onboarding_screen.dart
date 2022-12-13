import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 35.0.w, right: 35.0.w),
        child: Column( 
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.amber),
            ),
            Expanded(
              flex: 1,
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "We have Quality Chief",
                    style: AppStyles.myTitleTextStyle,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 14.0.h),
                  Text(
                    "Just few click to enter our foodis online app to get best service and We maintained quality.",
                    style: AppStyles.mySubTitleTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
