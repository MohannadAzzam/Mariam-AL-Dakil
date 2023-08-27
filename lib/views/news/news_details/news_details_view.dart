import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';

import '../../../core/utils/assets.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.width;
    var data = Get.arguments;
    String one =
        'Oracle is making a late surge into the Middle East cloud market with a new center in Saudi Arabia, and plans to open further ‘regions’ in the kingdom and the UAE later this year.';
    String two =
        'According to Andrew Reichman, director of product management, 87 percent of top companies in the Middle East region already use Oracle and 54 percent use Oracle Cloud.';
    String three =
        'On the expansion into the region, he said: “These represent Oracle’s first forays into the Gulf with Generation 2 Cloud regions, a part of the world that’s been underserved by other cloud vendors. Oracle is the first public cloud vendor with a region in Saudi Arabia.';
    String four =
        'The center in Jeddah is one of five new cloud regions announced by Oracle as part of the company’s regional expansion plan, which also includes Melbourne (Australia), Osaka (Japan), Montreal (Canada) and Amsterdam (The Netherlands).';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // centerTitle: true,
            leading: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: SvgPicture.asset(
                    AssetsData.back,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ));
            }),
            expandedHeight: 257.h,
            floating: false,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: Image.asset(
                      data[0]["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 15.w,
                      bottom: 19.h,
                      child: CustomText(
                    text: data[2]["date"],
                    fontSize: 14,
                    color: kGreyColor,
                  ))
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CustomText(
                      text:
                      data[1]["title"],
                      fontSize: 22,
                    ),
  SizedBox(height: 6.h,),
                    const CustomText(
                      text:
                          'Additional center in the kingdom and two in the UAE planned to open this year',
                      fontSize: 15,
                    ),
                    SizedBox(height: 15.h,),

                    CustomText(
                      text: one,
                      color: kDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),  SizedBox(height: 6.h,),

                    CustomText(
                      text: two,
                      color: kDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),  SizedBox(height: 6.h,),

                    CustomText(
                      text: three,
                      color: kDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),  SizedBox(height: 6.h,),

                    CustomText(
                      text: four,
                      color: kDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),  SizedBox(height: 15.h,),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
