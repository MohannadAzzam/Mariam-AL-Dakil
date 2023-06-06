import 'package:flutter/material.dart';
import 'package:mariam_aldakhil/views/auth/forgot_password/forgot_password_body.dart';

import '../../../core/utils/assets.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.authBackground), fit: BoxFit.cover)),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: ForgotPasswordBody(),
      ),
    );
  }
}
