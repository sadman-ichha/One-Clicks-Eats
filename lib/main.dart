import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/ui/route/route.dart';
import 'package:one_clicks_eats/ui/views/splash_screen.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context,child){
      return  GetMaterialApp(
        title: "Food App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        initialRoute: splash,
        getPages: getPages,
        home: const SplashScreen(),
      ),
   
    });
  }
}
