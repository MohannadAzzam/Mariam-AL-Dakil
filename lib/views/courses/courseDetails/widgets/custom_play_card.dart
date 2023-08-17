import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../homeView/widget/custom_home_text.dart';

class CustomPlayCard extends StatelessWidget {

final lessonNum;
   const CustomPlayCard({Key? key, this.lessonNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Container(
      margin: EdgeInsets.only(bottom: 15.h, ),
      decoration: BoxDecoration(
          color: kDrawerBorder,
          boxShadow: kContainerShadow,
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      height: 79.h,
      width: 345.w,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           CustomText(
            text: 'Lesson 0$lessonNum:',
            color: kGoldenColor,
            fontSize: 14,
          ),
          // SizedBox(width: 17.w),

          SizedBox(
            width: 150.w,
            child: const CustomText(
              text: 'Basic Intro of Online Network ',
              color: kBlackColor,
              fontSize: 14,
            ),
          ),
          // SizedBox(
          //   width: 7.w
          // ),
          Container(
              decoration: const BoxDecoration(
                  // boxShadow: kPlayContainerShadow
              ),
              child: SvgPicture.asset(AssetsData.playSvg,))
        ],
      ),
    );
  }
}
