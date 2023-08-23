import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../homeView/widget/custom_home_text.dart';

class CustomSetttingsUnit extends StatelessWidget {
  final Function()? onTap;
  final String? icon;
  final String? text;
  const CustomSetttingsUnit({super.key, this.onTap, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      height: 55.5.h,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: 13.h, bottom: 13.h, left: 15.w, right: 9.w),
                    child: SvgPicture.asset("$icon")),
                CustomText(
                  text: "$text",
                  color: kDarkGreyColor,
                  fontSize: 14,
                ),
              ],
            ),
            SvgPicture.asset(AssetsData.arrowRightSvg),
          ],
        ),
      ),
    );
  }
}
