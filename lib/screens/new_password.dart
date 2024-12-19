import 'package:aleef/constants.dart';
import 'package:aleef/screens/sign_in.dart';
import 'package:aleef/size_config.dart';
import 'package:aleef/widgets/custom_button.dart';
import 'package:aleef/widgets/custom_input.dart';
import 'package:aleef/widgets/title.dart';
import 'package:aleef/widgets/top_of_page.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
          TopOfPage(
              title: 'تغيير كلمة المرور',
              subtitle: 'من فضلك أدخل كلمة المرور الجديدة',
              subtitleColor: KShadowColor,
              subtitleSize: 14),
          CustomTitle(
            text: 'كلمة المرور',
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 0.6),
            child: CustomInputPassword(),
          ),
          CustomTitle(
            text: 'تأكيد كلمة المرور',
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 0.6),
            child: CustomInputPassword(),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
            child: InkWell(
              child: CustomButton(
                color: KMainColor,
                text: 'حفظ',
                fontSize: 16,
                textColor: Colors.white,
              ),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return SignInPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
