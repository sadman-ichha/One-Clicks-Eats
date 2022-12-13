import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({super.key});

  List<String> _lottieFiles = [
    'assets/file/chef.json',
    "assets/file/Eating Food.json",
    "assets/file/Foods.json"
  ];
  List<String> _title = [
    'We have Quality Chief',
    "We are Maintained Quality",
    "Enjoy Delicious Food",
  ];
  List<String> _description = [
    "Just few click to enter our foodis online app to get best service and We maintained quality.",
    "Just few click to enter our foodis online app to get best service and We maintained quality.",
    "Just few click to enter our foodis online app to get best service and We maintained quality."
  ];

  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 35.0.w, right: 35.0.w,bottom: 30.0.h),
        child: Column(
          children: [
            Obx((() => Expanded(
                  flex: 1,
                  child: Lottie.asset(_lottieFiles[_currentIndex.toInt()]),
                ))),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _title[_currentIndex.toInt()],
                    style: AppStyles.myTitleTextStyle,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 14.0.h),
                  Text(
                    _description[_currentIndex.toInt()],
                    style: AppStyles.mySubTitleTextStyle,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DotsIndicator(
                  dotsCount: _lottieFiles.length,
                  position: _currentIndex.toDouble(),
                ),
                CircleAvatar(
                  radius: 34.0.r ,
                  child: Center(
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward,size: 35.0,)),
                  ),
                )
              ],
            )
         
          ],
        ),
      ),
    );
  }
}
