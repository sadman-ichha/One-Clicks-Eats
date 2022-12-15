import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/app_imags.dart';
import 'package:one_clicks_eats/helper/signup_helper.dart';
import 'package:one_clicks_eats/models/sign_up_model.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';
import 'package:one_clicks_eats/ui/widgets/apple_button.dart';
import 'package:one_clicks_eats/ui/widgets/custom_text_field.dart';
import 'package:one_clicks_eats/ui/widgets/password_field.dart';

import 'home_page.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailORphoneController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
  String? registerBy;
  
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0.h),
              Center(
                child: Image(
                  height: 94.0.h,
                  width: 86.0.w,
                  image: AssetImage(AppImages.splashLogo),
                ),
              ),
              SizedBox(height: 16.0.h),
              Text(
                "SignUp Now !",
                style: AppStyles.myTitleTextStyle,
              ),
              SizedBox(height: 5.0.h),
              Text("Please signup to account our app",
                  style: AppStyles.mySubTitleTextStyle),
              SizedBox(height: 35.0.h),
              customTextField(
                  "Name", Icons.person, _nameController, TextInputType.name),
              SizedBox(height: 8.0.h),
              customTextField("Email or Phone", Icons.perm_phone_msg_rounded,
                  _emailORphoneController, TextInputType.text),
              SizedBox(height: 8.0.h),
              passwordTextField(
                  "Password", Icons.lock_outline, _passController),
              SizedBox(height: 8.0.h),
              passwordTextField("Confirm Password", Icons.lock_outline,
                  _confirmPassController),
              SizedBox(height: 35.0.h),
              AppleButton("Sign Up", () async {
               
                Get.to(HomePage());
              }),
              SizedBox(height: 14.0.h),
              AppStyles().richText("Have an Account? ", "Log In", login),
            ],
          ),
        ),
      ),
    );
  }
}
