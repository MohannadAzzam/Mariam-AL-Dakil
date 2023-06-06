import 'package:flutter/material.dart';
import '../../../core/utils/assets.dart';
import 'login_body.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.authBackground), fit: BoxFit.cover)),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: LoginBody(),
      ),
    );
  }
}
