import 'package:aleef/constants.dart';
import 'package:aleef/screens/varification_code.dart';
import 'package:aleef/size_config.dart';
import 'package:aleef/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: KMainColor,
          ),
        ),
      ),
      body: ListView(
        children: [
        
          SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.defaultSize! * 15,
            child: Image.asset(
              'assets/images/splash/logo.png',
              width: SizeConfig.defaultSize! * 15,
            ),
          ),
         
               Text(
               'هل نسيت كلمة المرور؟',
                textAlign: TextAlign.center,
                style:  TextStyle(
                  color: KMainColor,
                  fontSize:  SizeConfig.defaultSize! * 2,
                  fontFamily: KMainFont,
                  fontWeight: FontWeight.w800,
                ),
              ),
            
          
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
           Text(
            'من فضلك أدخل البريد الإلكتروني الخاص بحسابك',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: KShadowColor,
              fontSize: SizeConfig.defaultSize! * 1.2,
              fontFamily: KMainFont,
              fontWeight: FontWeight.w800,
            ),
          ),
           SizedBox(
            height: SizeConfig.defaultSize! * 1,
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
            height: SizeConfig.defaultSize! * 5,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VarificationCodePage())),
            child: Container(
              height: SizeConfig.defaultSize! * 6,
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
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'إرسال الرمز',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: KMainFont,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
