import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../const/app_colors.dart';

class AppStyles {
  RichText richText(String firstText, String secText,navigatePage) => RichText(
        text: TextSpan(
            text: firstText,
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF707B81),
            ),
            children: [
              TextSpan(
                text: secText,
                style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.appleColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.toNamed(navigatePage),
              )
            ]),
      );

  static TextStyle myTitleTextStyle = TextStyle(
      fontSize: 27.0.sp, fontWeight: FontWeight.w600, color: Color(0xFF343B42));
  static TextStyle mySubTitleTextStyle = TextStyle(
      fontSize: 16.0.sp, fontWeight: FontWeight.w400, color: Color(0xFF8D8D8D));
}
