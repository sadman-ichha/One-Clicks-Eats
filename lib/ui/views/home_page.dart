import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:one_clicks_eats/ui/views/next_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Aaaaaaaaaaaaaaaaaa"),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(()=>NextPage());
              },
              child: Text("NxPage")),
        ],
      ),
    );
  }
}
