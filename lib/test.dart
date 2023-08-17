import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mariam_aldakhil/core/utils/assets.dart';
import 'constants.dart';
import 'views/homeView/widget/custom_home_text.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('تست ولااااااك'),
        ),
        body: Container(
          margin:
              EdgeInsets.only(bottom: 18.h, left: 15.w, right: 15.w, top: 18.h),
          height: 218.h,
          width: 345.w,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kContainerShadow,
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r)),
                child: Image.asset(
                  AssetsData.serverImage,
                  fit: BoxFit.cover,
                  height: 130.h,
                  width: 345.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText(
                      text:
                          "Oracle opens new cloud center in Saudi with further GCC expansion planned",
                      fontSize: 15,
                    ),
                    CustomText(
                      text: "04 Feb 2020 at 10:10 AM",
                      fontSize: 12,
                      color: kGreyColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
