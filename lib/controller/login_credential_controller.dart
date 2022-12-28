import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../business_logic/shared_preferences.dart';
import '../const/app_string.dart';
import '../const/global_variable.dart';
import '../helper/login_helper.dart';

class LoginCredentialController extends GetxController {
 final  emailORphoneController = TextEditingController().obs;
  final  passController = TextEditingController().obs;
  @override
  void onInit() {
    getLoginInitialize();
    super.onInit();
  }

  void getLoginInitialize() async {
    if (await SharedPref.getPreferences(AppStrings.rememberMe) == "true") {
      isSelected.value = true;
      emailORphoneController.value.text =
          (await SharedPref.getPreferences(AppStrings.emailOr_Phone))!;
      passController.value.text =
          (await SharedPref.getPreferences(AppStrings.passWord))!;
    } else {
      isSelected.value = false;
    }
  }

  loginNow() async {
    isProgress.value = true;
    await LogInHelper().login(
     emailORphoneController.value.text,
     passController.value.text,
    );
    isProgress.value = false;
  }
}
