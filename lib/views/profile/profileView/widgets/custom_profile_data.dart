import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';
import '../../../homeView/widget/custom_home_text.dart';

class CustomProfileData extends StatelessWidget {
  final String? text;
  final String? type;
  const CustomProfileData({super.key, this.text, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      height: 55.5.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "$type",
            color: kDarkGreyColor,
            fontSize: 14,
          ),
          CustomText(
            text: "$text",
            fontSize: 14,
          )
        ],
      ),
    );
  }
}
