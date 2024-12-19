import 'package:aleef/constants.dart';
import 'package:aleef/screens/home_page.dart';
import 'package:aleef/screens/sign_in.dart';
import 'package:aleef/size_config.dart';
import 'package:aleef/widgets/custom_button.dart';
import 'package:aleef/widgets/custom_input.dart';
import 'package:aleef/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
       SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: SizeConfig.defaultSize! * 14,
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
              Text(
                'مرحبًا بكم في أليف',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: KMainColor,
                  fontSize: SizeConfig.defaultSize! * 2,
                  fontFamily: KMainFont,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 0.7,
          ),
          Text(
            'إنشاء حساب جديد',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: SizeConfig.defaultSize! * 1.7,
              fontFamily: KMainFont,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          CustomTitle(text: 'الاسم'),
          CustomInput(text: 'الاسم'),
          CustomTitle(text: 'البريد الإلكتروني'),
          CustomInput(text: 'البريد الإلكتروني'),
          CustomTitle(text: 'كلمة المرور'),
          CustomInput(text: 'كلمة المرور'),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          InkWell(
            child: CustomButton(
                color: KMainColor,
                text: 'إنشاء حساب جديد',
                fontSize: 16,
                textColor: Colors.white),
                 onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()));},
          ),
               SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          InkWell(
            child: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لديك حساب بالفعل؟ ',
                    style: TextStyle(
                      color: KTextColor,
                      fontSize: 16,
                      fontFamily: KMainFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'تسجيل الدخول',
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
                      builder: (context) => SignInPage()));
            },
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
        ],
      ),
    );
  }
}
