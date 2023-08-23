import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../homeView/widget/custom_home_text.dart';

class CustomAboutUsTrainers extends StatelessWidget {
  const CustomAboutUsTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 165.w,
        height: 210.h,
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: kContainerShadow,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        margin: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(
                AssetsData.ratingFaceImage,
                width: 165.w,
                height: 118.h,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Container(
              margin: EdgeInsets.only(left: 15.w, bottom: 15.h),
              alignment: Alignment.bottomLeft,
              child: const CustomText(
                // textAlign: TextAlign.justify,
                text: "Computer Science",
                fontSize: 20,
              ),
            ),
          ],
        ));
  }
}
