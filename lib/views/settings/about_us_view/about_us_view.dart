import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';

import 'package:mariam_aldakhil/core/utils/arrow_app_bar.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';
import 'package:mariam_aldakhil/views/settings/about_us_view/widgets/custom_about_us_trainers.dart';

import '../../../core/utils/assets.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var stringOne =
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";
    var stringTwo =
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";
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
        title: const Text("About US"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.h, left: 15.w, bottom: 27.h),
              child: const CustomText(
                text: "Who We Are",
                fontSize: 26,
              ),
            ),
            Image.asset(
              AssetsData.aboutUsImage,
              height: 225.h,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 25.h, left: 15.w, right: 15.w),
              child: CustomText(
                text: stringOne,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 20.h, left: 15.w, right: 15.w, bottom: 27.h),
              child: CustomText(
                text: stringTwo,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
              child: const CustomText(
                text: "Our Trainers",
                fontSize: 26,
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return const CustomAboutUsTrainers();
                }))
          ],
        ),
      )),
    );
  }
}
