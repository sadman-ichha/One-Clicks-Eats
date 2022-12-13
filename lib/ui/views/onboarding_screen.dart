import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:one_clicks_eats/const/app_colors.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({super.key});

  List<String> _lottieFiles = [
    'assets/file/chef.json',
    "assets/file/Foods.json",
    "assets/file/Eating Food.json",
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Center(
              child: Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Text("SKIP",
                style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF8D8D8D))),
          )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 35.0.w, right: 35.0.w, bottom: 30.0.h),
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
                  Obx(() => Text(
                        _title[_currentIndex.toInt()],
                        style: AppStyles.myTitleTextStyle,
                        textAlign: TextAlign.start,
                      )),
                  SizedBox(height: 14.0.h),
                  Obx(() => Text(
                        _description[_currentIndex.toInt()],
                        style: AppStyles.mySubTitleTextStyle,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => DotsIndicator(
                    dotsCount: _lottieFiles.length,
                    position: _currentIndex.toDouble(),
                    decorator: DotsDecorator(
                      size: Size(10.0.w, 10.0.h),
                      //activeSize: Size(14.0.w, 14.0.h),
                      color: Color(0xFF737077),
                      activeColor: AppColors.appleColor,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 34.0.r,
                  backgroundColor: AppColors.appleColor,
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          if (_currentIndex == 2) {
                            Get.toNamed(signup);
                          } else {
                            _currentIndex++;
                          }
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 35.0,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
