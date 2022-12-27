import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_clicks_eats/const/app_colors.dart';
import 'package:one_clicks_eats/const/app_string.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';
import 'package:one_clicks_eats/ui/views/login_screen.dart';
import 'package:one_clicks_eats/ui/views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  String initialRoute;
  // handle exceptions caused by making main async
  WidgetsFlutterBinding.ensureInitialized();
  // init a shared preferences variable
  



  runApp(FoodApp());
}


Future<Null> checkIsLogin(context) async {
    String _token = "";
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _token = prefs.getString(AppStrings.authToken)!;
    if (_token != "" && _token != null) {
      print("alreay login.");
      //your home page is loaded
    }
    else
    {
      //replace it with the login page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      );
    }
  }

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "Food App",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: AppColors.scaffoldBackgroundColor,
              textTheme: GoogleFonts.nunitoTextTheme(
                Theme.of(context).textTheme.apply(),
              ),
            ),
            initialRoute: splash,
            getPages: getPages,
            home: const SplashScreen(),
          );
        });
  }
}
