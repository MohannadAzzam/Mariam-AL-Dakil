import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';
import '../../../core/utils/assets.dart';

import 'dart:math' as math;

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

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
          title: const Text("Faq's"),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return CustomQuestionFaq(
                      num: (index + 1).toString(),
                    );
                  })),
              SizedBox(
                height: 15.h,
              )
            ],
          ),
        )));
  }
}

class CustomQuestionFaq extends StatelessWidget {
  final String? num;
  const CustomQuestionFaq({super.key, this.num});

  @override
  Widget build(BuildContext context) {
    buildList() {
      return Container(
        margin: EdgeInsets.only(
          top: 10.h,
        ),
        child: const CustomText(
          text:
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
          fontSize: 15,
          fontWeight: FontWeight.w100,
        ),
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w),
      child: ScrollOnExpand(
        child: Column(
          children: [
            ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToExpand: true,
                tapBodyToCollapse: true,
                hasIcon: false,
              ),
              header: Container(
                height: 55.h,
                width: 345.w,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: kContainerShadow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 16, bottom: 15.h, left: 20.w, right: 15.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CustomText(
                              text: "Q$num",
                              color: kGoldenColor,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            CustomText(
                              text: "Question $num",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                            color: kAppBarColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: ExpandableIcon(
                          theme: const ExpandableThemeData(
                            expandIcon: MariamIcons.arrouw_up,
                            collapseIcon: MariamIcons.arrow_down,
                            iconColor: Colors.white,
                            iconSize: 24.0,
                            iconRotationAngle: math.pi / 1,
                            iconPadding: EdgeInsets.only(right: 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              collapsed: Container(),
              expanded: buildList(),
            ),
          ],
        ),
      ),
    ));
  }
}
