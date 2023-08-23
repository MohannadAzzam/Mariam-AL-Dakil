import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';

class CustomDetailsTextFormFiled extends StatelessWidget {
  final String hint;

  const CustomDetailsTextFormFiled({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 345.w,
      child: TextFormField(
        style: GoogleFonts.playfairDisplay(
            color: kBlackColor, fontWeight: FontWeight.normal, fontSize: 16.sp),
        decoration: InputDecoration(
            hintText: hint,
            suffixIcon: Container(
              margin: EdgeInsets.symmetric(vertical: 1.h),
              // height: 40.h,
              width: 116.w,
              // margin: EdgeInsets.only(bottom: 15.h, right: 15.w, left: 15.w,top: 15.h),
              child: CustomButton(
                Text: "ACTIVE",
                width: 116,
              ),
            ),
            hintStyle: GoogleFonts.playfairDisplay(
                color: kDarkGreyColor,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE1E1E1)),
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}
