import 'package:aleef/screens/onboarding.dart';
import 'package:aleef/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

// this splash screen for my app //
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // This is setting the time for disappeare //
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  OnBoarding(),
        ),
      );
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topRight,
            width: double.infinity,
            height: 200,
            child: SvgPicture.asset(
              'assets/images/splash/splash_up.svg',
              height: 135,
            ),
          ),
          Container(
            alignment: Alignment.center,
            // color: KMainColor,
            width: double.infinity,
            child: 
            Image.asset(
              'assets/images/splash/logo.png',
              height: 260,
            ),
          ),
           Container(
            alignment: Alignment.bottomLeft,
            width: double.infinity,
            height: 200,
            child: SvgPicture.asset(
              'assets/images/splash/splash_down.svg',
              height: 135,
            ),
          ),
        ],
      ),
    );
  }
}
