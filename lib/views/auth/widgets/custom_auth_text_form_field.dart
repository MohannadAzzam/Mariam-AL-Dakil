import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAuthTextFormField extends StatelessWidget {
  final String icon;
  final String hint;
  final bool isObscure;

  const CustomAuthTextFormField(
      {Key? key,
      required this.icon,
      required this.hint,
      required this.isObscure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h, right: 30.w, left: 30.w),
      child: TextFormField(
        obscureText: isObscure,
        style: GoogleFonts.playfairDisplay(
            color: const Color(0xff717171),
            fontWeight: FontWeight.bold,
            fontSize: 16.sp),
        decoration: InputDecoration(
            prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 20.h),
                child: SvgPicture.asset(
                  icon,
                  // colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                )),
            hintText: hint,
            hintStyle: GoogleFonts.playfairDisplay(
                color: const Color(0xff717171),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE1E1E1)),
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}
