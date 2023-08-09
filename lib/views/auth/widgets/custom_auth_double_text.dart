import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/constants.dart';

class CustomAuthDoubleText extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final String? pageRote;

  // final Function()? onTap;
  const CustomAuthDoubleText(
      {Key? key,
      required this.textOne,
      required this.textTwo, this.pageRote,
      // required this.onTap
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          textOne,
          style: GoogleFonts.playfairDisplay(
              color: const Color(0xffBEBCBC),
              fontSize: kAuthTextFontSize.sp,
              fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap:(){
            Get.toNamed(pageRote!);

          },
          child: Text(
            textTwo,
            style: GoogleFonts.playfairDisplay(
                color: kGoldenColor,
                fontSize: kAuthTextFontSize.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
