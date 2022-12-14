import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  //const CustomTextField({super.key});

  String? hintsText;
  IconData? icon;
  CustomTextField(this.hintsText, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintsText!,
          style: TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 7.0.h),
        Container(
            height: 57.0.h,
            width: 307.0.w,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(icon!), border: OutlineInputBorder()),
            )),
      ],
    );
  }
}
