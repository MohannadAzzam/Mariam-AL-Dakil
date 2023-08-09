import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/core/utils/assets.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';


class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          margin: EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w),
          decoration:  BoxDecoration(
              color: kDrawerBorder,
              boxShadow: kContainerShadow,
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          height: 84.h,
          width: 345.w,
          child: Row(
            children: [
              Container(
                height: 70.h,
                width: 70.w,
                margin:
                EdgeInsets.only(top: 7.h, bottom: 7.h, left: 7.w, right: 12.w),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius:  BorderRadius.all(
                      Radius.circular(15.r),
                    ),
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.homeThreeThree),
                        fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(text: 'Biology & The Scientific Method'),
                  Row(
                    children:  [
                      const CustomText(
                        text: 'Start on:',
                        color: kGreyColor,
                        fontSize: 12,
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      const CustomText(
                        text: '30 Jan 2020',
                        fontSize: 12,
                      ),
                    ],
                  ),
                  Row(
                    children:  [
                      const CustomText(
                        text: '05',
                        color: kBlackColor,
                        fontSize: 12,
                      ), const CustomText(
                        text: ' of',
                        color: kBlackColor,
                        fontSize: 12,
                      ), SizedBox(
                        width: 2.w,
                      ),const CustomText(
                        text: '14',
                        color: kBlackColor,
                        fontSize: 12,
                      ),

                      const CustomText(
                        text: ' Lessons',
                        color: kBlackColor,
                        fontSize: 12,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
