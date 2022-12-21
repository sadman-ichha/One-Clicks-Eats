import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_clicks_eats/const/app_imags.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';
import 'package:one_clicks_eats/ui/widgets/apple_button.dart';
import 'package:one_clicks_eats/ui/widgets/custom_text_field.dart';
import 'package:one_clicks_eats/ui/widgets/password_field.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _emailORphoneController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70.0.h),
              Center(
                child: Image(
                  height: 94.0.h,
                  width: 86.0.w,
                  image: AssetImage(AppImages.splashLogo),
                ),
              ),
              SizedBox(height: 16.0.h),
              Text(
                "LogIn Now !",
                style: AppStyles.myTitleTextStyle,
              ),
              SizedBox(height: 5.0.h),
              Text("Please login to continue our app",
                  style: AppStyles.mySubTitleTextStyle),
              SizedBox(height: 35.0.h),
              // customTextField("Email or Phone", Icons.perm_phone_msg_rounded,
              //     _emailORphoneController, TextInputType.text),
              SizedBox(height: 8.0.h),
              passwordTextField(
                  "Password", Icons.lock_outline, _passController),
              SizedBox(height: 35.0.h),
              AppleButton("Log In", () {}),
              SizedBox(height: 14.0.h),
              AppStyles().richText("Have an Account? ", "Sign Up", signup),
            ],
          ),
        ),
      ),
    );
  }
}
