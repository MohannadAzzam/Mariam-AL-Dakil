import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/core/utils/assets.dart';
import 'constants.dart';
import 'controllers/product_controller.dart';
import 'views/homeView/widget/custom_home_text.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productController = Get.put(ProductController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('تست ولااااااك'),
        ),
        body: Container(
          margin:
              EdgeInsets.only(bottom: 15.h, left: 15.w, right: 15.w, top: 18.h),
          height: 84.h,
          width: 345.w,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kContainerShadow,
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 7.h, left: 7.w, bottom: 7.h, right: 12.w),
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.img), fit: BoxFit.cover),
                    color: Colors.white,
                    boxShadow: kContainerShadow,
                    borderRadius: BorderRadius.all(Radius.circular(15.r))),
              ),
              Expanded(
                // color: Colors.red,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 64),
                            // width: 244.w,
                            child: const CustomText(
                              text: "The Earth Ceramic Coffee Mug",
                              fontSize: 14,
                              textOverflow: TextOverflow.ellipsis,
                            )),
                        const CustomText(
                          text: "280 KWD",
                          fontSize: 15,
                          color: kGoldenColor,
                        ),
                      ],
                    ),
                    Positioned(
                        top: 10.h,
                        right: 10.w,
                        child: SvgPicture.asset(AssetsData.deleteSvg)),
                    Positioned(
                      height: 30.h,
                      width: 88.w,
                      bottom: 10.h,
                      right: 10.w,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: kGreyColor),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            GetBuilder<ProductController>(builder: (_) {
                              return Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        productController.decrement();
                                      },
                                      child: Icon(Icons.remove,
                                          color: kGreyColor, size: 13.r)));
                            }),
                            GetBuilder<ProductController>(builder: (_) {
                              return CustomText(
                                  text:
                                      productController.productCount.toString(),
                                  fontSize: 14);
                            }),
                            GetBuilder<ProductController>(builder: (_) {
                              return Expanded(
                                  child: InkWell(
                                      onTap: () {
                                        _.increment();
                                      },
                                      child: Icon(Icons.add,
                                          color: kGreyColor, size: 13.r)));
                            }),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.center,
              //   // mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     GetBuilder<ProductController>(builder: (_) {
              //       return Expanded(
              //           child: InkWell(
              //               onTap: () {
              //                 productController.decrement();
              //               },
              //               child: Icon(Icons.remove,
              //                   color: kGreyColor, size: 13.r)));
              //     }),
              //     GetBuilder<ProductController>(builder: (_) {
              //       return CustomText(
              //           text: productController.productCount.toString(),
              //           fontSize: 14);
              //     }),
              //     GetBuilder<ProductController>(builder: (_) {
              //       return Expanded(
              //           child: InkWell(
              //               onTap: () {
              //                 _.increment();
              //               },
              //               child: Icon(Icons.add,
              //                   color: kGreyColor, size: 13.r)));
              //     }),
              //   ],
              // )
            ],
          ),
        ));
  }
}
