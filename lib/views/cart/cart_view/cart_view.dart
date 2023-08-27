import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:mariam_aldakhil/views/cart/cart_view/widgets/custom_cart_card.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';

import '../../../core/utils/assets.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

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
        title: const Text("Cart"),
      ),
      body: SafeArea(
          child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            children: [
              //25
              SizedBox(height: 25.h),
              // CustomCartCard(),
              ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const CustomCartCard();
                  }),
              //25
              SizedBox(height: 25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    text: "Sub total:",
                    fontSize: 14,
                    color: kGreyColor,
                  ),
                  CustomText(
                    text: "100 KWD",
                    fontSize: 14,
                  ),
                ],
              ),
              //11
              SizedBox(height: 11.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    text: "Tax (15%):",
                    fontSize: 14,
                    color: kGreyColor,
                  ),
                  CustomText(
                    text: "15 KWD",
                    fontSize: 14,
                  ),
                ],
              ),
              //11.5
              SizedBox(height: 11.5.h),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    text: "Sub total:",
                    fontSize: 14,
                  ),
                  CustomText(
                    text: "100 KWD",
                    fontSize: 22,
                  ),
                ],
              ),
              //11.5
              const Divider(),
//26.5
              SizedBox(height: 26.5.h),

              const CustomButton(
                text: "CHEKOUT",
                width: 345,
              )
            ],
          ),
        ),
      )),
    );
  }
}
