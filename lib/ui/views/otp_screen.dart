import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_clicks_eats/ui/widgets/apple_button.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../styles/app_style.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            SizedBox(height: 120.0.h),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w),
                child: Text("OTP Verification",
                    style: TextStyle(
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1B1E28))),
              ),
            ),
            SizedBox(height: 12.0.h),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w),
              child: Text(
                "Please check your www.uihut@gmail.com to see the verification code",
                textAlign: TextAlign.center,
                style: AppStyles.mySubTitleTextStyle,
              ),
            ),
            SizedBox(height: 29.0.h),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w),
              child: Text("OTP Code",
                  style: TextStyle(
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1B1E28))),
            ),
            SizedBox(height: 32.0.h),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w),
              child: PinFieldAutoFill(
                codeLength: 6,
                decoration: BoxLooseDecoration(
                    strokeColorBuilder: FixedColorBuilder(Colors.black)),
              ),
            ),
            SizedBox(height: 37.0.h),
            Center(child: AppleButton("Verify", () {})),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.only(left: 30.0.w, right: 30.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Text("Resend code to",style: AppStyles.textStyle),
                  //Text("01:26",style: AppStyles.mySubTitleTextStyle,)
                ],
              ),
            )
          ],
        ));
  }
}
