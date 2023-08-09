import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../core/utils/assets.dart';
import '../../homeView/widget/custom_home_text.dart';

class CustomAllCoursesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w),
      decoration: BoxDecoration(
          color: kDrawerBorder,
          boxShadow: kContainerShadow,
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      height: 84.h,
      width: 345.w,
      child: InkWell(
        onTap: () {
          Get.toNamed('courseDetailsPage');
        },
        child: Row(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              margin: EdgeInsets.only(
                  top: 7.h, bottom: 7.h, left: 7.w, right: 12.w),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.r),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.homeThreeThree),
                      fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(text: 'Business Management'),
                Row(
                  children: [
                    const CustomText(
                      text: 'By',
                      color: kGreyColor,
                      fontSize: 12,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const CustomText(
                      text: 'Betty R. Roberts',
                      fontSize: 12,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    CustomText(
                      text: '14',
                      color: kGoldenColor,
                      fontSize: 12,
                    ),
                    CustomText(
                      text: ' Lessons',
                      color: kGoldenColor,
                      fontSize: 12,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  const CustomAllCoursesCard({Key? key}) : super(key: key);
}
