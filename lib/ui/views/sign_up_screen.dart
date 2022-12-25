import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/app_imags.dart';
import 'package:one_clicks_eats/helper/signup_helper.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';
import 'package:one_clicks_eats/ui/widgets/apple_button.dart';
import 'package:one_clicks_eats/ui/widgets/custom_text_field.dart';
import 'package:one_clicks_eats/ui/widgets/password_field.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailORphoneController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
  String? registerBy;
  int? userID;
  RxBool isProgress = false.obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  apiPostRegister() async {
    if (_emailORphoneController.text.contains("@")) {
      registerBy = "email";
    } else {
      registerBy = "phone";
    }

    await SignUpHelper().signupRegister(
      _nameController.text,
      _emailORphoneController.text,
      _passController.text,
      _confirmPassController.text,
      registerBy,
    );
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
                customTextfield(
                  hintsText: "Name",
                  icon: Icons.person,
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  validate: (val) {
                    if (val == null || val.isEmpty) {
                      return "This field is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8.0.h),
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
                  "Password",
                  Icons.lock_outline,
                  _passController,
                  validate: (val) {
                    if (val!.isEmpty) {
                      return "This field is required";
                    } else if (val.length < 6) {
                      return "Password must be 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8.0.h),
                passwordTextField(
                  "Confirm Password",
                  Icons.lock_outline,
                  _confirmPassController,
                  validate: (val) {
                    if (val!.isEmpty) {
                      return "This field is required";
                    } else if (val.length < 6) {
                      return "Password must be 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 35.0.h),
                AppleButton("Sign Up", () {
                  if (formKey.currentState!.validate()) {
                    apiPostRegister();
                  } else {
                    print("Error is formValidation");
                    Fluttertoast.showToast(msg: "Error is formValidation");
                  }
                }),
                SizedBox(height: 14.0.h),
                AppStyles().richText("Have an Account? ", "Log In", login),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
