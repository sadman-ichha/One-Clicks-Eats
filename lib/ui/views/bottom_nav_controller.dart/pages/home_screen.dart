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
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0.h),
              Text(
                "Let's Find Quality Food 😋🍴",
                style: AppStyles.myTitleTextStyle,
              ),
              SizedBox(height: 20.0.h),
              Center(
                child: Container(
                  height: 50.0.h,
                  width: 300.0.w,
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0.r),
                    ),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 18.0.w),
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 18.0,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10.0.w),
                      Text(
                        "Search Your Favorite Food",
                        style: AppStyles.mySubTitleTextStyle,
                      ),
                      SizedBox(width: 20.0.w),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.sliders)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0.h),
              Text("Menu", style: AppStyles.myTitleTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
