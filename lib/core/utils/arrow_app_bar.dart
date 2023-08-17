import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'assets.dart';

class ArrowAppBar extends StatelessWidget {
  final String pageTitle;
  const ArrowAppBar({Key? key, required this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              AssetsData.back,
            ));
      }),
      title:  Text("$pageTitle"),
    );
  }
}
