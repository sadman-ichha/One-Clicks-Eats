import 'package:flutter/material.dart';
import 'package:one_clicks_eats/ui/styles/app_style.dart';
import '../../business_logic/shared_preferences.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
   String ?token;
  @override
  void initState() async {
    token = await SharedPref().getToken();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          token.toString(),
          style: AppStyles.myTitleTextStyle,
        ),
      ),
    );
  }
}
