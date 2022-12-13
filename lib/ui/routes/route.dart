import 'package:get/get.dart';
import 'package:one_clicks_eats/ui/views/onboarding_screen.dart';
import 'package:one_clicks_eats/ui/views/sign_up.dart';
import 'package:one_clicks_eats/ui/views/splash_screen.dart';

const String splash = "/splash-screen";
const String onboarding = "/onboarding-screen";
const String signup = "/signup-screen";

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () =>  OnboardingScreen(),
  ),
   GetPage(
    name: signup,
    page: () =>  SignUpScreen(),
  ),
];
