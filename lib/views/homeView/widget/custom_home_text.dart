import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/constants.dart';

class CustomHomeText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  const CustomHomeText(
      {Key? key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.playfairDisplay(
          fontWeight: fontWeight ?? FontWeight.bold,
          fontSize: fontSize?.sp ?? 15.sp,
          color: color ?? kBlackColor),
    );
  }
}
