import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../business_logic/shared_preferences.dart';
import '../const/app_string.dart';
import '../const/global_variable.dart';

class LoginCredentialController extends GetxController {
  TextEditingController emailORphoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  void getInitialize() async {
    if (await SharedPref.getPreferences(AppStrings.rememberMe) == "true") {
      isSelected.value = true;
      emailORphoneController.text =
          (await SharedPref.getPreferences(AppStrings.emailOr_Phone))!;
      passController.text =
          (await SharedPref.getPreferences(AppStrings.passWord))!;
    } else {
      isSelected.value = false;
    }
  }

  @override
  void onInit() {
    getInitialize();
    super.onInit();
  }
}
