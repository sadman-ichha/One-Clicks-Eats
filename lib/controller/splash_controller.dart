import 'package:get/get.dart';
import 'package:one_clicks_eats/business_logic/shared_preferences.dart';
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';

class SplashController extends GetxController {
  String? token;

  @override
  void onReady() async {
    await SharedPref.getPreferences(AppStrings.authToken).then((value) {
      token = value;
      print(token);
      update();
    });
    if (token == "") {
      Future.delayed(Duration(seconds: 3), () => Get.offAllNamed(onboarding));
    } else {
      Future.delayed(Duration(seconds: 1), () => Get.toNamed(bottomNavController));
    }

    super.onReady();
  }
}
