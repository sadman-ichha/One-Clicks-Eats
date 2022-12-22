import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/app_colors.dart';

RxBool isVisible = true.obs;

Widget passwordTextField(
    String hintsText, IconData icon, TextEditingController controller,
    {FormFieldValidator<String>? validate}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        hintsText,
        style: TextStyle(
            fontSize: 14.0.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF969696)),
      ),
      SizedBox(height: 7.0.h),
      Container(
          height: 57.0.h,
          width: 307.0.w,
          child: Obx((() => TextFormField(
                controller: controller,
                obscureText: isVisible.value,
                validator: validate,
                decoration: InputDecoration(
                  prefixIcon: Icon(icon, color: AppColors.appleColor),
                  border: OutlineInputBorder(),
                  suffix: Obx(
                    () => IconButton(
                      onPressed: () {
                        isVisible.value = !isVisible.value;
                      },
                      icon: isVisible == false
                          ? Icon(Icons.visibility_outlined,
                              color: Color(0xFF969696))
                          : Icon(Icons.visibility_off_outlined,
                              color: Color(0xFF969696)),
                    ),
                  ),
                ),
              )))),
    ],
  );
}
