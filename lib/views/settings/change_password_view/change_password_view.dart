import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';
import 'package:mariam_aldakhil/views/profile/editProfileView/widgets/custom_edtit_profile_text_form_filed.dart';

import '../../../core/utils/assets.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(
                AssetsData.back,
              ));
        }),
        title: const Text("Change password"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: Get.height,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 46.w, vertical: 25.h),
                child: const CustomText(
                  text: "Enter your new password below.",
                  fontSize: 25,
                  textAlign: TextAlign.center,
                ),
              ),
              const CustomEditProfileTextForm(hint: "Current Password"),
              const CustomEditProfileTextForm(hint: "New Password"),
              const CustomEditProfileTextForm(hint: "Confirm New Password"),
              const CustomButton(text: "SAVE", width: 315)
            ],
          ),
        ),
      )),
    );
  }
}
