import 'package:get/get.dart';
import 'package:one_clicks_eats/ui/views/bottom_nav_controller.dart/bottom_nav_controller.dart';
import 'package:one_clicks_eats/ui/views/bottom_nav_controller.dart/pages/home_screen.dart';
import 'package:one_clicks_eats/ui/views/login_screen.dart';
import 'package:one_clicks_eats/ui/views/onboarding_screen.dart';
import 'package:one_clicks_eats/ui/views/sign_up_screen.dart';
import 'package:one_clicks_eats/ui/views/splash_screen.dart';

const String splash = "/splash-screen";
const String onboarding = "/onboarding-screen";
const String signup = "/signup-screen";
const String login = "/login-screen";
const String home = "/home-screen";
const String otp = "/otp-screen";
const String bottomNavController = "/bottomNavController";

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
  GetPage(
    name: login,
    page: () =>  LoginScreen(),
  ),
  //  GetPage(
  //   name: otp,
  //   page: () =>  OTPScreen(),
  // ),
  GetPage(
    name: home,
    page: () =>  HomeScreen(),
  ),
   GetPage(
    name: bottomNavController,
    page: () =>  BottomNavControllerScreen(),
  ),
];
