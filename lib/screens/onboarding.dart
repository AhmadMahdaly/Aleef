import 'package:aleef/constants.dart';
import 'package:aleef/screens/home_page.dart';
import 'package:aleef/screens/new_account.dart';
import 'package:aleef/screens/sign_in.dart';
import 'package:aleef/widgets/custom_button.dart';
import 'package:aleef/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.centerRight,
              width: SizeConfig.screenWidth,
              child: SvgPicture.asset(
                'assets/images/on_boarding/On Boarding ss.svg',
                height: SizeConfig.defaultSize! * 40,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 14,
            child: Image.asset(
              'assets/images/on_boarding/dog.png',
              width: SizeConfig.screenWidth,
              height: SizeConfig.defaultSize! * 40,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: SizeConfig.defaultSize! * 40,
              width: SizeConfig.screenWidth!,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(27),
                  topRight: Radius.circular(27),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.defaultSize! * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          'assets/images/on_boarding/dog hand icon.svg'),
                      SizedBox(
                        width: SizeConfig.defaultSize! * 1,
                      ),
                      const Text(
                        'مرحبًا بكم في أليف',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFF8900),
                          fontSize: 26,
                          fontFamily: KMainFont,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize! * 2,
                  ),
                  const SizedBox(
                    width: 342,
                    child: Text(
                      ' هل تبحث عن رفيق مخلص؟ يوفر لك تطبيق أليف فرصة للعثور على الأليف المثالي الذي يناسب شخصيتك ونمط حياتك،  كما يوفر فرصة لأصحاب الحيوانات للعثور على منزل دافئ لحيواناتهم الأليفة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF686868),
                        fontSize: 16,
                        fontFamily: KMainFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize! * 3,
                  ),
                  InkWell(
                    
                    child: CustomButton(color: KMainColor,
                
                    fontSize: 20,
                    text: "إنشاء حساب جديد",
                    textColor: Colors.white,),
                    onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewAccount();
                }));
              },
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize!*1.5,
                  ),
                  InkWell(
                    onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context)=> SignInPage()));},
                    child: CustomBottonBorder(
                      borderColor: KMainColor,
                      text: 'تسجيل الدخول',
                      textColor: KMainColor,
                  
                    textSize: 20,
                    ),
                  ),
                   SizedBox(
                    height: SizeConfig.defaultSize!*1.5,
                  ),
                  InkWell(
                    child: const Text(
                        'الدخول كزائر',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF686868),
                            fontSize: 16,
                            fontFamily: KMainFont,
                            fontWeight: FontWeight.w500,
                           decoration: TextDecoration.underline,
                        ),
                    ),
                    onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
                  )
                ],
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
