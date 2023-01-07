import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:one_clicks_eats/const/app_colors.dart';
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
            Container(
              height: 50.0.h,
              width: 300.0.w,
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0.r),
                ),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 15.0.w),
                  FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                  ),
                  SizedBox(width: 12.0.w),
                  Text(
                    "Search Your Favorite Food",
                    style: AppStyles.mySubTitleTextStyle,
                  ),
                  SizedBox(width: 20.0.w),
                  IconButton(
                      onPressed: () {}, icon: FaIcon(FontAwesomeIcons.sliders)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
