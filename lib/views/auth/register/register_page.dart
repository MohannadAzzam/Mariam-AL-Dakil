import 'package:flutter/material.dart';
import 'package:mariam_aldakhil/views/auth/register/register_body.dart';

import '../../../core/utils/assets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.authBackground), fit: BoxFit.cover)),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: RegisterBody(),
      ),
    );
  }
}
