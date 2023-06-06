import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/constants.dart';

class CustomAuthText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final int fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomAuthText({Key? key, required this.text,  this.textColor, required this.fontSize, required this.fontWeight, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: GoogleFonts.playfairDisplay(
          color: textColor ?? kGreyColor,
          fontSize: fontSize.sp,
          fontWeight: fontWeight),
    );
  }
}
