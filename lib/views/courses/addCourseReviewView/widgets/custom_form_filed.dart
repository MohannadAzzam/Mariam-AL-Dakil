import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class CustomRatingFormFiled extends StatelessWidget {
  final String hint;

  const CustomRatingFormFiled({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200.h,
      // width: 345.w,
      child: TextFormField(
        minLines: 7,
        maxLines: 10,
        style: GoogleFonts.playfairDisplay(
            color: kBlackColor, fontWeight: FontWeight.normal, fontSize: 16.sp),
        decoration: InputDecoration(
            hintText: hint,
            contentPadding: EdgeInsets.only(top: 30.h,left: 30.w ,right: 15.w),
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
