import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:one_clicks_eats/const/app_colors.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FaIcon(FontAwesomeIcons.house),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex.value,
          elevation: 5.0,
          selectedItemColor: AppColors.appleColor,
          backgroundColor: Colors.black,
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
    );
  }
}
