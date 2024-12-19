import 'package:aleef/constants.dart';
import 'package:aleef/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopOfPage extends StatelessWidget {
   TopOfPage({super.key,
   required this.title,
   required this.subtitle,
   required this.subtitleColor,
   required this.subtitleSize,
   });

String? title;
String? subtitle;
Color? subtitleColor;
double? subtitleSize;
  @override
  Widget build(BuildContext context) {
    return  Column(
     
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
                title!,
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
            subtitle!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: subtitleColor,
              fontSize: SizeConfig.defaultSize! * 1.2,
              fontFamily: KMainFont,
              fontWeight: FontWeight.w800,
            ),
          ),
           SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          ],);
  }
}