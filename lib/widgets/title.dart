
import 'package:aleef/constants.dart';
import 'package:aleef/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTitle extends StatelessWidget {
   CustomTitle({
    super.key,
    required this.text,
  });
String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
       EdgeInsets.only(top: SizeConfig.defaultSize!*1,
       bottom:SizeConfig.defaultSize!*0.7 ),
      child: Container(
       margin: const EdgeInsets.symmetric(horizontal: 20),
       alignment: Alignment.topRight,
       child:  Text(
     text!,
         style: const TextStyle(
           color: KTextColor,
           fontSize: 14,
           fontFamily: KMainFont,
           fontWeight: FontWeight.w500,
         ),
       ),
                ),
    );
  }
}