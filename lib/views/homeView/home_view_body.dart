import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';
import '../../constants.dart';
import '../../core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myIndex = 1;

    final ScrollController _controller = ScrollController();

    // final double _height = 305.0.w;
    void _animateToIndex(int index, double height) {
      _controller.animateTo(
        index * height,
        duration: const Duration(milliseconds: 750),
        curve: Curves.fastOutSlowIn,
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // margin: EdgeInsets.only(top: 22.h, left: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 22.h, left: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomHomeText(
                  text: "Checkout Our Demos",
                  fontSize: 14,
                ),
                IconButton(
                    onPressed: () {
                      _animateToIndex(myIndex++, 305.0.w);
                    },
                    icon: SvgPicture.asset(AssetsData.arrowRightSvg))
              ],
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: _controller,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: 300.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: kContainerShadow,
                            image: const DecorationImage(
                                image: AssetImage(AssetsData.homeOne),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const CustomHomeText(
                                  text:
                                      "How to Add lightning effect in photos",color: Colors.white,),
                              SizedBox(
                                height: 3.h,
                              ),
                              const CustomHomeText(
                                text: "Photoshop",
                                fontSize: 13,
                                color: kGreyColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 10 ,),
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 29,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomHomeText(
                  text: "Our Free Courses",
                  color: kBlackColor,
                  fontSize: 14,
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AssetsData.arrowRightSvg))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(bottom: 29.h),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 140,
                    width: 131,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kContainerShadow,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 72,
                          width: 131,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image:
                                      AssetImage(AssetsData.rectangleCopyOne),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, bottom: 10.h, top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CustomHomeText(
                                text: "Arts and Humanities",
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                  // height: 13.h,
                                  ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    // margin: EdgeInsets.only(bottom: 50),
                    height: 140,
                    width: 131,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kContainerShadow,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 72,
                          width: 131,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image:
                                      AssetImage(AssetsData.rectangleCopyTwo),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, bottom: 10.h, top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CustomHomeText(
                                text: "Computer Science",
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                  // height: 13.h,
                                  ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 140,
                    width: 131,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kContainerShadow,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 72,
                          width: 131,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image:
                                      AssetImage(AssetsData.rectangleCopyThree),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, bottom: 10.h, top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CustomHomeText(
                                text: "Economics and Finance",
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                  // height: 13.h,
                                  ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomHomeText(
                  text: "Our Paid Courses",
                  color: kBlackColor,
                  fontSize: 14,
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AssetsData.arrowRightSvg))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(bottom: 29.h),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 140,
                    width: 131,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kContainerShadow,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 72,
                          width: 131,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(AssetsData.homeThreeOne),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, bottom: 10.h, top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CustomHomeText(
                                text: "Social Media Marketing",
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                  // height: 13.h,
                                  ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    // margin: EdgeInsets.only(bottom: 50),
                    height: 140,
                    width: 131,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kContainerShadow,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 72,
                          width: 131,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(AssetsData.homeThreeTwo),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, bottom: 10.h, top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CustomHomeText(
                                text: "Social Media Influencer",
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                  // height: 13.h,
                                  ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 140,
                    width: 131,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kContainerShadow,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 72,
                          width: 131,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(AssetsData.homeThreeThree),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, bottom: 10.h, top: 18.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CustomHomeText(
                                text: "Biology & The Scientific",
                                color: kSecondaryColor,
                              ),
                              SizedBox(
                                  // height: 13.h,
                                  ),
                            ],
                          ),
                        ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
