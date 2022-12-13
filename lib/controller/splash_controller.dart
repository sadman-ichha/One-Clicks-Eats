import 'package:get/get.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(Duration(seconds: 3), () => Get.offAllNamed(onboarding));
    super.onReady();
  }
}
