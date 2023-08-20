import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  const CustomText(
      {Key? key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.color, this.textOverflow, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      // softWrap: true,
      // textAlign: TextAlign.justify,
      overflow:textOverflow,
      // maxLines: 2,
      style: GoogleFonts.playfairDisplay(
          fontWeight: fontWeight ?? FontWeight.bold,
          fontSize: fontSize?.sp ?? 15.sp,
          color: color ?? kBlackColor),
    );
  }
}
