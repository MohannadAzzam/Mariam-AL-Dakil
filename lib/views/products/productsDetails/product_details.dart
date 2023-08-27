import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/controllers/product_controller.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/assets.dart';
import '../../../modle/product_data.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    List<Product> productsCart = [];

    var pro =
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";

    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    List productList = ProductList().productList;

    var data = Get.arguments;

    final pages = List.generate(
        3,
        (index) => Container(
              width: 300.w,
              height: 200.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: Colors.grey.shade300,
                  image: DecorationImage(
                      image: AssetImage(productList[data.id].image),
                      fit: BoxFit.cover)),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            ));
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('cartPage');
              },
              icon: Badge(
                backgroundColor: Colors.white,
                label: const CustomText(
                  text: "3",
                  fontSize: 12,
                ),
                isLabelVisible: true,
                // padding: EdgeInsets.all(5),
                child: SvgPicture.asset(
                  // ignore: deprecated_member_use
                  color: kBlackColor,
                  AssetsData.cartSvg,
                ),
              ))
        ],
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(
                AssetsData.back,
              ));
        }),
        title: const Text("Product Details"),
      ),
      body: SafeArea(
        child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 240,
              child: PageView.builder(
                controller: controller,
                // itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: WormEffect(
                activeDotColor: kPrimaryColor,
                dotColor: kPrimaryColorOP30,
                dotHeight: 10.h,
                dotWidth: 10.w,
                type: WormType.thinUnderground,
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: Get.width,
              // color: Colors.red,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: productList[data.id].title,
                    fontSize: 22,
                  ),
                  CustomText(
                    text: "${productList[data.id].price} KWD",
                    fontSize: 18,
                    color: kGoldenColor,
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 88.w,
                    height: 30.h,
                    decoration: const BoxDecoration(
                        boxShadow: kContainerShadow,
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.end,
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
                              text: productController.productCount.toString(),
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
                  SizedBox(height: 20.h),
                  const CustomText(
                    text: "About product",
                    fontSize: 18,
                  ),
                  SizedBox(height: 11.h),
                  CustomText(
                    text: pro,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: kDarkGreyColor,
                    textOverflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 20.h),
                  Container(
                      // color: Colors.red,
                      alignment: Alignment.center,
                      child: CustomButton(
                        width: 345,
                        text: "ADD TO CART",
                        onPressed: () {
                          //
                          // productList.forEach((element) {
                          //   print(data.id);
                          // });

                          productsCart.add(Product(
                              data.id,
                              productList[data.id].image,
                              productList[data.id].title,
                              productList[data.id].price,
                              productList[data.id].tax));

                          // Get.defaultDialog(title: "${productsCart[0].title}");
                        },
                      ))
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
