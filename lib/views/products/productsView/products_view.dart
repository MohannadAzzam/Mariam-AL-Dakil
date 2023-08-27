import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/modle/product_data.dart';
import 'package:mariam_aldakhil/views/products/productsView/widgets/custom_products_card.dart';

import '../../../core/utils/assets.dart';
import '../../homeView/drawer/drawer_body.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List productList = ProductList().productList;

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
          "Products",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 25.h,),
              ListView.builder(
                shrinkWrap: true ,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productList.length,
                  itemBuilder: (context,index){
                return  CustomProductCard(
                  image: productList[index].image,
                  title: productList[index].title,
                  price: productList[index].price,
                  onTap: (){
                    // print(productList[index].id);
                    // var s = productList[index];
                    // print(s.title);
                  Get.toNamed('productDetailsPage',arguments:
                     productList[index],
                    // {"title" : productList[index].title},
                    // {"price", productList[index].price},
                    // {"tax", productList[index].tax},
                        );
                },);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
