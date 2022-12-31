import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/app_colors.dart';
import 'package:one_clicks_eats/ui/views/bottom_nav_controller.dart/pages/cart_screen.dart';
import 'package:one_clicks_eats/ui/views/bottom_nav_controller.dart/pages/fav_screen.dart';
import 'package:one_clicks_eats/ui/views/bottom_nav_controller.dart/pages/home_screen.dart';
import 'package:one_clicks_eats/ui/views/bottom_nav_controller.dart/pages/profile_screen.dart';

class BottomNavControllerScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  RxInt _currentIndex = 0.obs;
  List _pages = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _pages[_currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex.value,
            elevation: 5.0,
            selectedItemColor: AppColors.appleColor,
            backgroundColor: Colors.black,
            onTap: (values) {
              _currentIndex.value = values;
            },
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: FaIcon(FontAwesomeIcons.house, size: 15.0),
              ),
              BottomNavigationBarItem(
                label: "Favourite",
                icon: FaIcon(FontAwesomeIcons.heart),
              ),
              BottomNavigationBarItem(
                label: "Cart",
                icon: FaIcon(FontAwesomeIcons.bucket, size: 15.0),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: FaIcon(FontAwesomeIcons.house, size: 15.0),
              ),
            ]),
      ),
    );
  }
}
