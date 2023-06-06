import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/views/auth/widgets/custom_auth_text.dart';

class CustomAuthButton extends StatelessWidget {
  final String buttonText;
  final String? pageRoute;
  const CustomAuthButton({Key? key, required this.buttonText, this.pageRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAuthPadding),
      child: SizedBox(
        width: Get.width,
        child: ElevatedButton(
          style: ButtonStyle(
              minimumSize: const MaterialStatePropertyAll(kButtonSize),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kBorderRadius))),
              elevation: const MaterialStatePropertyAll(kButtonElevation),
              backgroundColor: const MaterialStatePropertyAll(kButtonColor)),
          onPressed: () {
            Get.toNamed(pageRoute!);
          },
          child:  CustomAuthText(
              text: buttonText,
              textColor: kButtonTextColor,
              fontSize: kAuthTextFontSize,
              fontWeight: kButtonFontWeight),
        ),
      ),
    );
  }
}
