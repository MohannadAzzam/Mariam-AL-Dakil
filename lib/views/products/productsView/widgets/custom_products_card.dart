import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mariam_aldakhil/constants.dart';

import '../../../homeView/widget/custom_home_text.dart';

class CustomProductCard extends StatelessWidget {
  final Function()? onTap;
  final String image;
  final String title;
  final double price;
  const CustomProductCard({Key? key, this.onTap, required this.image, required this.title, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(bottom: 15.h, left: 15.w, right: 15.w, /*top: 18.h*/),
      height: 84.h,
      width: 345.w,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: kContainerShadow,
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.h,left: 7.w,bottom: 7.h,right: 12.w),
              width: 70.w,
              height: 70.h,
              decoration: BoxDecoration(
                  image:  DecorationImage(image: AssetImage(image),fit: BoxFit.cover),

                  borderRadius: BorderRadius.all(Radius.circular(15.r))),

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 244.w,
                    child:  CustomText(text: title,fontSize: 14,)),
                   CustomText(text: "$price KWD",fontSize: 15,color: kGoldenColor,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
