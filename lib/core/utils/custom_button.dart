import 'package:flutter/material.dart';
import 'package:mariam_aldakhil/constants.dart';

import '../../views/homeView/widget/custom_home_text.dart';

class CustomButton extends StatelessWidget {
  final String Text;
  final Function()? onPressed;
  const CustomButton({Key? key, required this.Text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(kButtonSize),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kBorderRadius))),
          elevation: const MaterialStatePropertyAll(kButtonElevation),
          backgroundColor: const MaterialStatePropertyAll(kButtonColor)),
      onPressed: onPressed,
      child:   CustomText(
          text: Text,
          color: kBlackColor,
          fontSize: 16,
          fontWeight: FontWeight.w900),
    );
  }
}
