import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_clicks_eats/const/app_imags.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';
import 'package:one_clicks_eats/ui/widgets/custom_text_field.dart';
import 'package:one_clicks_eats/ui/widgets/password_field.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
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
            SizedBox(height: 36.0.h),
            Text(
              "SignUp Now !",
              style: AppStyles.myTitleTextStyle,
            ),
            SizedBox(height: 6.0.h),
            Text("Please sign in to continue our app",
                style: AppStyles.mySubTitleTextStyle),
            SizedBox(height: 43.0.h),
            customTextField(
                "Email Address", Icons.email_outlined, _emailController),
            SizedBox(height: 18.0.h),
            passwordTextField("Password", Icons.lock_outline, _passController)
          ],
        ),
      ),
    );
  }
}
