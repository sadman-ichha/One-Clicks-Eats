import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: FaIcon(FontAwesomeIcons.house),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user),
          label: "Home",
        )
      ]),
    );
  }
}
