import 'package:aleef/constants.dart';
import 'package:aleef/screens/forgot_password.dart';
import 'package:aleef/screens/home_page.dart';
import 'package:aleef/screens/new_account.dart';
import 'package:aleef/size_config.dart';
import 'package:aleef/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.topStart,
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: SizeConfig.defaultSize! * 20,
            child: Image.asset(
              'assets/images/splash/logo.png',
              width: SizeConfig.defaultSize! * 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/on_boarding/dog hand icon.svg'),
              SizedBox(
                width: SizeConfig.defaultSize! * 1,
              ),
              const Text(
                'مرحبًا بكم في أليف',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: KMainColor,
                  fontSize: 22,
                  fontFamily: KMainFont,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          const Text(
            'تسجيل الدخول',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: KTextColor,
              fontSize: 18,
              fontFamily: KMainFont,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topRight,
            child: const Text(
              'البريد الإلكتروني',
              style: TextStyle(
                color: KTextColor,
                fontSize: 14,
                fontFamily: KMainFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          CustomInput(text: 'البريد الإلكتروني',),
          SizedBox(
            height: SizeConfig.defaultSize! * 1.2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topRight,
            child: const Text(
              'كلمة المرور',
              style: TextStyle(
                color: KTextColor,
                fontSize: 14,
                fontFamily: KMainFont,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          const CustomInputPassword(),
          SizedBox(
            height: SizeConfig.defaultSize! * 1.7,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgotPasswordPage()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'نسيت كلمة المرور؟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: KMainColor,
                  fontSize: 14,
                  fontFamily: KMainFont,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          InkWell(
            child: Container(
              height: SizeConfig.defaultSize! * 5,
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize! * 2,
              ),
              decoration: ShapeDecoration(
                color: KMainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'تسجيل الدخول',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: KMainFont,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
             onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()));}
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          InkWell(
            child: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'ليس لديك حساب؟ ',
                    style: TextStyle(
                      color: KTextColor,
                      fontSize: 16,
                      fontFamily: KMainFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'أنشىء حسابك الآن',
                    style: TextStyle(
                      color: KMainColor,
                      fontSize: 16,
                      fontFamily: KMainFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
             onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewAccount()));},
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
        ],
      ),
    );
  }
}
