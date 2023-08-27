import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../core/utils/assets.dart';
import '../widgets/custom_auth_button.dart';
import '../widgets/custom_auth_double_text.dart';
import '../widgets/custom_auth_text_form_field.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(          physics: const BouncingScrollPhysics(),

      child: SizedBox(
        height: Get.height,
        child: SafeArea(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AssetsData.logoSvg)),
                SizedBox(
                  height: 50.h,
                ),
                const CustomAuthTextFormField(
                  icon: AssetsData.userSvg,
                  hint: "First Name",
                  isObscure: false,
                ),
                const CustomAuthTextFormField(
                  icon: AssetsData.userSvg,
                  hint: "Last Name",
                  isObscure: false,
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
                const CustomAuthButton(buttonText: "REGISTER"),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 52.0, right: 52.0, top: 120.0, bottom: 42.0),
                  child: CustomAuthDoubleText(
                      pageRote: '/loginPage',
                      textOne: "Already have an account?",
                      textTwo: "Login Now"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
