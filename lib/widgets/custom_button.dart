import 'package:aleef/constants.dart';
import 'package:aleef/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({
    super.key, required this.color,
    required this.text,
    required this.fontSize,
    required this.textColor,
  });
Color? color;
String? text;
Color? textColor;
double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:20 ),
      height: SizeConfig.defaultSize!*5.5,
      padding:   EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize! *8.5,
      ),
      decoration: ShapeDecoration(
        color: color!,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text!,
            textAlign: TextAlign.center,
            style:  TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontFamily: KMainFont,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}


// ignore: must_be_immutable
class CustomBottonBorder extends StatelessWidget {
   CustomBottonBorder({super.key,
   required this.borderColor,
   required this.text,
   required this.textColor,
   required this.textSize,
   });
 
 Color? borderColor;
 Color? textColor;
 String? text;
 double? textSize;
  @override
  Widget build(BuildContext context) {
    return Container(
   height: SizeConfig.defaultSize!*5.5,
   padding:   EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize! *9.6,
      ),
    decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.50, color: borderColor!,),
            borderRadius: BorderRadius.circular(12),
        ),
    ),
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor!,
                    fontSize: textSize,
                    fontFamily: KMainFont,
                    fontWeight: FontWeight.w500,
            
                ),
            ),
        ],
    ),
);
  }
}