import 'package:aleef/screens/home_page.dart';
import 'package:aleef/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ToOnBoard extends StatelessWidget {
  const ToOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _checkOnboarding(),
      builder: (context, snapshot) {
        if (snapshot.data == false) {
          return OnBoarding();
                 } else {
          return 
            HomePage();
          
        }
      },
    );
  }

  Future<bool> _checkOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;
    if (!hasSeenOnboarding) {
      prefs.setBool('hasSeenOnboarding', true);
    }
    return hasSeenOnboarding;
  }
}