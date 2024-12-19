
import 'package:aleef/constants.dart';
import 'package:aleef/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
   CustomInput({
    super.key,
    required this.text,
  });
String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 20,
      left: 20,
      bottom: SizeConfig.defaultSize!*1),
      child: TextField(
        
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          filled: true, // تفعيل الخلفية الملونة
          fillColor: const Color(0xffFEF7FF),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: KMainColor,
            ),
          ),
          hintText: text!,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
            color: KShadowColor,
            fontFamily: KMainFont,
            fontSize: 14,
          ),
          border: const OutlineInputBorder(
          ),
    
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            
            borderSide: const BorderSide(
              color: KShadowColor,
              
            ),
          ),
        ),
      ),
    );
  }
}



class CustomInputPassword extends StatelessWidget {
  const CustomInputPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          hintText: 'كلمة المرور',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
            color: KShadowColor,
            fontFamily: KMainFont,
            fontSize: 14,
          ),
         prefixIcon: const Icon(
            Icons.remove_red_eye,
            color: KShadowColor,
          ),
          alignLabelWithHint:true,
          filled: true, // تفعيل الخلفية الملونة
          fillColor: const Color(0xffFEF7FF),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: KMainColor,
            ),
          ),
          border: const OutlineInputBorder(),
    
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: KShadowColor,
            ),
          ),
        ),
      ),
    );
  }
}
