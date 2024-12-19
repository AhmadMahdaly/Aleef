import 'package:aleef/constants.dart';
import 'package:aleef/screens/new_password.dart';
import 'package:aleef/size_config.dart';
import 'package:aleef/widgets/top_of_page.dart';
import 'package:flutter/material.dart';

class VarificationCodePage extends StatefulWidget {
  const VarificationCodePage({super.key});

  @override
  State<VarificationCodePage> createState() => _VarificationCodePageState();
}

class _VarificationCodePageState extends State<VarificationCodePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // This is setting the time for disappeare //
    Future.delayed(const Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NewPassword(),
        ),
      );
    });
  }

  // bool _onEditing = true;

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
      body: Column(
        children: [
          Expanded(
            child: TopOfPage(
              title: 'رمز التحقق',
              subtitle: 'من فضلك أدخل رمز التحقق المكون من أربعة أرقام',
              subtitleColor: KShadowColor,
              subtitleSize: 14,
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          // Expanded(
          //   child: VerificationCode(
          //       textStyle: const TextStyle(fontSize: 20.0, color: KTextColor),
          //       keyboardType: TextInputType.number,
          //       underlineColor: KMainColor, // If this is null it will use primaryColor: Colors.red from Theme
          //       length: 4,
          //       cursorColor: Colors.blue, // If this is null it will default to the ambient
          //       // clearAll is NOT required, you can delete it
          //       // takes any widget, so you can implement your design
          //       clearAll:  const Padding(
          //         padding: EdgeInsets.all(16.0),
          //         child:  Text.rich(
          //     TextSpan(
          //         children: [
          // TextSpan(
          //     text: ' لم يصلك الرمز؟ ',
          //     style: TextStyle(
          //         color: KShadowColor,
          //         fontSize: 14,
          //         fontFamily: KMainFont,
          //         fontWeight: FontWeight.w500,
          //     ),
          // ),
          // TextSpan(
          //     text: 'إرسال مرة أخرى',
          //     style: TextStyle(
          //         color: KMainColor,
          //         fontSize: 14,
          //         fontFamily: KMainFont,
          //         fontWeight: FontWeight.w500,
          //         decoration: TextDecoration.underline,
          //         decorationColor: KMainColor,
          //     ),
          // ),
          //         ],
          //     ),
          //     textAlign: TextAlign.right,
          // ),
          //       ),
          //       onCompleted: (String value) {
          //         setState(() {
          //         });
          //       },
          //       onEditing: (bool value) {
          //         setState(() {
          //           _onEditing = value;
          //         });
          //         if (!_onEditing) FocusScope.of(context).unfocus();
          //       },
          //     ),
          // ),
        ],
      ),
    );
  }
}
