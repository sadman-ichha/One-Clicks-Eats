import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/app_colors.dart';

class customTextfield extends StatelessWidget {
  String? hintsText;
  TextEditingController? controller;
  TextInputType? keyboardType;
  IconData? icon;
  FormFieldValidator? validate;

  customTextfield({
    this.hintsText,
    this.controller,
    this.keyboardType,
    this.icon,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintsText!,
          style: TextStyle(
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF969696)),
        ),
        SizedBox(height: 7.0.h),
        Container(
            height: 57.0.h,
            width: 307.0.w,
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              validator: validate,
              decoration: InputDecoration(
                  prefixIcon: Icon(icon, color: AppColors.appleColor),
                  border: OutlineInputBorder()),
            )),
      ],
    );
  }
}
