import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:one_clicks_eats/const/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          selectedItemColor: AppColors.appleColor,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: FaIcon(FontAwesomeIcons.house, size: 15.0),
            ),
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: "Home",
              icon: FaIcon(FontAwesomeIcons.house, size: 15.0),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: FaIcon(FontAwesomeIcons.house, size: 15.0),
            ),
          ]),
    );
  }
}
