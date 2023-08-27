import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';

import '../../../core/utils/assets.dart';
import '../../homeView/drawer/drawer_body.dart';

class EmptyCartPage extends StatelessWidget {
  const EmptyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerBody(),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset(
                AssetsData.menuSvg,
              ));
        }),
        title: const Text(
          "Cart",
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(top: 100.h),
          width: Get.width,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsData.emptyCartSvg,
              ),
              SizedBox(height: 24.h),
              const CustomText(
                text: "Whoops!",
                fontSize: 36,
              ),
              SizedBox(height: 24.h),
              const CustomText(
                text:
                    "Your cart is empty now. Check\n our products and buy it.",
                fontSize: 15,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 24.h),
              CustomButton(
                width: 250,
                text: "Go to products".toUpperCase(),
                onPressed: () {
                  Get.toNamed('productsPage');
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
