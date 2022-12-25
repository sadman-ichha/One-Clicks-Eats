import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../const/app_colors.dart';

class AppleButton extends StatelessWidget {
  String buttonName;
  Function onAction;
  RxBool isProgress = false.obs;
  AppleButton(this.buttonName, this.onAction);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          isProgress.value = true;
          onAction();
        },
        child: isProgress == false
            ? Container(
                height: 60.0.h,
                width: 307.0.w,
                decoration: BoxDecoration(
                  color: AppColors.appleColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(3.0.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    buttonName,
                    style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
