import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';

import '../../../core/utils/assets.dart';
import '../widgets/custom_auth_button.dart';
import '../widgets/custom_auth_double_text.dart';
import '../widgets/custom_auth_text.dart';
import '../widgets/custom_auth_text_form_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.height,
        child: SafeArea(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // SizedBox(height: 190.h,),
                Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AssetsData.logoSvg)),
                SizedBox(
                  height: 50.h,
                ),
                const CustomAuthTextFormField(
                  icon: AssetsData.emailSvg,
                  hint: "Email Address",
                  isObscure: false,
                ),
                const CustomAuthTextFormField(
                  icon: AssetsData.passwordSvg,
                  hint: "Password",
                  isObscure: true,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 17.h, bottom: 19.h, left: 36.w, right: 36.w),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed('forgotPasswordPage');
                    },
                    child: const CustomAuthText(
                        text: "Forgot password",
                        textColor: kGoldenColor,
                        fontSize: kAuthTextFontSize,
                        fontWeight: FontWeight.bold) // Text(
                    ,
                  ),
                ),
                const CustomAuthButton(buttonText: "LOGIN",pageRoute: "/homePage",),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 52.0, right: 52.0, top: 160.0, bottom: 42.0),
                  child: CustomAuthDoubleText(
                      pageRote: 'RegisterPage',
                      textOne: "Don't have an account?",
                      textTwo: "Register Now"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
