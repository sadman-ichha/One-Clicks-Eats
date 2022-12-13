import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(data)
        Container(
            height: 57.0.h,
            width: 307.0.w,
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            )),
      ],
    );
  }
}
