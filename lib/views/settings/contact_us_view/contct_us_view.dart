import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/utils/assets.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              AssetsData.back,
            ));
      }),
      title:  const Text("Contact Us"),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Container(),
      )),
    );
  }
}