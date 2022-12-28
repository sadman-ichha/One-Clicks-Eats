// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/business_logic/shared_preferences.dart';
import 'package:one_clicks_eats/const/app_colors.dart';
import 'package:one_clicks_eats/const/app_imags.dart';
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:one_clicks_eats/const/global_variable.dart';
import 'package:one_clicks_eats/helper/login_helper.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';
import 'package:one_clicks_eats/ui/widgets/apple_button.dart';
import 'package:one_clicks_eats/ui/widgets/custom_text_field.dart';
import 'package:one_clicks_eats/ui/widgets/password_field.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _emailORphoneController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void getInitialize() async {
    if (await SharedPref.getPreferences(AppStrings.rememberMe) == "true") {
      isSelected.value = true;
      _emailORphoneController.text =
          (await SharedPref.getPreferences(AppStrings.emailOr_Phone))!;
      _passController.text =
          (await SharedPref.getPreferences(AppStrings.passWord))!;
    } else {
      isSelected.value = false;
    }
  }

  loginNow() async {
    isProgress.value = true;
    await LogInHelper()
        .login(_emailORphoneController.text, _passController.text);
    isProgress.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                customTextfield(
                    hintsText: "Email or Phone",
                    controller: _emailORphoneController,
                    keyboardType: TextInputType.text,
                    icon: Icons.perm_phone_msg_rounded,
                    validate: (val) {
                      if (val!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    }),
                SizedBox(height: 8.0.h),
                passwordTextField(
                    "Password", Icons.lock_outline, _passController,
                    validate: (val) {
                  if (val!.isEmpty) {
                    return "This field is required";
                  } else if (val.length < 6) {
                    return "Password must be 6 characters";
                  }
                  return null;
                }),
                SizedBox(height: 5.0.h),
                Obx(
                  () => Padding(
                    padding: EdgeInsets.only(
                      left: 23.0.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            activeColor: AppColors.appleColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0.r)),
                            value: isSelected.value,
                            onChanged: (bool? val) {
                              isSelected.value = val!;
                              SharedPref.setPreferences(
                                  AppStrings.rememberMe, val.toString());
                              print("isSeleceted__$isSelected");
                            }),
                        Text(
                          "Remember Me",
                          style: AppStyles.mySubTitleTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.0.h),
                Obx(() {
                  if (isProgress.value) {
                    return AppStyles().progressIndicator();
                  }
                  return isSelected.value == true
                      ? AppleButton("Log In", () {
                          if (formKey.currentState!.validate()) {
                            loginNow();
                          }
                        })
                      : InkWell(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg: "Please Selected Remember Me");
                          },
                          child: Container(
                            height: 60.0.h,
                            width: 307.0.w,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(3.0.r),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFFFFFFFF)),
                              ),
                            ),
                          ),
                        );
                }),
                SizedBox(height: 14.0.h),
                AppStyles().richText("Have an Account? ", "Sign Up", signup),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
