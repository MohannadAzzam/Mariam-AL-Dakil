import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mariam_aldakhil/constants.dart';

import '../../views/homeView/widget/custom_home_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final Function()? onPressed;
  const CustomButton(
      {Key? key, required this.text, this.onPressed, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: 50.h,
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(kButtonSize),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBorderRadius))),
            elevation: const MaterialStatePropertyAll(kButtonElevation),
            backgroundColor: const MaterialStatePropertyAll(kButtonColor)),
        onPressed: onPressed,
        child: CustomText(
            text: text,
            color: kBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
