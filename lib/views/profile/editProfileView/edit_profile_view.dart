import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:mariam_aldakhil/views/profile/editProfileView/widgets/custom_edtit_profile_text_form_filed.dart';

import '../../../core/utils/assets.dart';
import '../../../core/utils/custom_button.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

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
        title: const Text("Edit Profile"),
      ),
      body: SafeArea(
          child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
        child: Container(
          width: Get.width,
          padding: EdgeInsets.only(top: 25.h, left: 30.w, right: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CustomEditProfileTextForm(hint: "First Name"),
              CustomEditProfileTextForm(hint: "Last Name"),
              CustomEditProfileTextForm(hint: "Email Address"),
              CustomEditProfileTextForm(hint: "Phone"),
              CustomEditProfileTextForm(hint: "City"),
              CustomEditProfileTextForm(hint: "Address"),
              CustomButton(text: "SAVE", width: 315)
            ],
          ),
        ),
      )),
    );
  }
}
