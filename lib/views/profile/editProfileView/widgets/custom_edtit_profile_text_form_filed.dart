import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class CustomEditProfileTextForm extends StatelessWidget {
  final String hint;

  const CustomEditProfileTextForm({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      height: 55.h,
      width: 315.w,
      child: TextFormField(
        style: GoogleFonts.playfairDisplay(
            color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 16.sp),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 26.w, vertical: 15.h),
            hintText: hint,
            hintStyle: GoogleFonts.playfairDisplay(
                color: kDarkGreyColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: kTextFormBorder, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}
