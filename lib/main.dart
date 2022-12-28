import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_clicks_eats/const/app_colors.dart';
import 'package:one_clicks_eats/ui/routes/route.dart';

import 'package:one_clicks_eats/ui/views/splash_screen.dart';

Future<void> main() async {
  // handle exceptions caused by making main async
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FoodApp());
}

// class App extends StatelessWidget {
//   AuthController authController = AuthController();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: authController.autoLogin(),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.hasError) {
//             return Center(
//               child: CircularProgressIndicator(
//                   color: AppColors.appleColor,
//                   ),
//             );
//           } else {
//             if (snapshot.data == true) {
//               home;
//             }
//             login;
//           }
//           // if (snapshot.connectionState == ConnectionState.done) {
//           //   return FoodApp();
//           // }
//           return FoodApp();
//         });
//   }
// }

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
            home: SplashScreen(),
          );
        });
  }
}
