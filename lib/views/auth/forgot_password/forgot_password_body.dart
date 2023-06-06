import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../core/utils/assets.dart';
import '../widgets/custom_auth_button.dart';
import '../widgets/custom_auth_double_text.dart';
import '../widgets/custom_auth_text.dart';
import '../widgets/custom_auth_text_form_field.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.height,
        child: SafeArea(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // SizedBox(
                //   height: 75.h,
                // ),
                Padding(
                  padding:  EdgeInsets.only(left: 75.w,right: 75.w,/*top: 91.h,*/bottom: 47.h),
                  child: SvgPicture.asset(AssetsData.forgotPasswordSvg),
                ),
                // SizedBox(
                //   // height: 47.h,
                // ),
                Text(
                  "Forgot your password?",
                  style: GoogleFonts.playfairDisplay(
                      color: kBlackColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: const CustomAuthText(
                      textAlign: TextAlign.center ,
                      text:
                          "Enter your registered email address below to receive your password reset instructions!",
                      textColor: kGreyColor,
                      fontSize: kAuthTextFontSize,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25.h,
                ),
                const CustomAuthTextFormField(
                  icon: AssetsData.emailSvg,
                  hint: "Email Address",
                  isObscure: false,
                ),
                const CustomAuthButton(buttonText: "SEND"),
                 // SizedBox(height: 120.h,),
                 const Padding(
                  padding: EdgeInsets.only(
                    left: 52.0,
                    right: 52.0, top: 120.0, bottom: 42.0
                  ),
                  child: Align(
                    // alignment: Alignment.bottomCenter,
                    child: CustomAuthDoubleText(
                        pageRote: 'loginPage',
                        textOne: "Remember password? ",
                        textTwo: "Login Now"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
