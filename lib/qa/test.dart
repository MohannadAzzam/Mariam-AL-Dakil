import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/core/utils/assets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    var myIndex = 1;

    final ScrollController _controller = ScrollController();

    final double _height = 305.0.w;
    void _animateToIndex(int index) {
      _controller.animateTo(
        index * _height,
        duration: Duration(milliseconds: 750),
        curve: Curves.fastOutSlowIn,
      );
    }

    return Scaffold(
        appBar: AppBar(title: Text("test")),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 22.h, left: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomHomeText(
                    text: "Checkout Our Demos",
                    color: kBlackColor,
                    fontSize: 14,
                  ),
                  IconButton(
                      onPressed: () {
                        _animateToIndex(myIndex++);
                      },
                      icon: SvgPicture.asset(AssetsData.arrowRightSvg))
                ],
              ),
            ),
                SizedBox(width: 15.w ,),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(width: 15.w ,),
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
                                        text: "How to Add lightning effect in photos"),
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
                // SizedBox(width: 15.w ,),

              // ],
            // ),
          ],
        ));
  }
}

//   Scaffold(
//   drawer: const Drawer(),
//   appBar: AppBar(
//     leading: Builder(builder: (context) {
//       return IconButton(
//           onPressed: () {
//             Scaffold.of(context).openDrawer();
//           },
//           icon: SvgPicture.asset(
//             AssetsData.menuSvg,
//           ));
//     }),
//     elevation: kAppBarElevation,
//     title: const Text(
//       "Testing...",
//     ),
//   ),
//   // ),
//   // backgroundColor:
//   body: SingleChildScrollView(
//     controller: _controller, scrollDirection: Axis.vertical,
//     // margin: EdgeInsets.only(top: 22.h, left: 15.w),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(top: 22.h, left: 15.w),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const CustomHomeText(
//                 text: "Checkout Our Demos",
//                 color: kBlackColor,
//                 fontSize: 14,
//               ),
//               IconButton(
//                   onPressed: () => _animateToIndex(10),
//                   icon: SvgPicture.asset(AssetsData.arrowRightSvg))
//             ],
//           ),
//         ),
//         // SingleChildScrollView(
//         //   scrollDirection: Axis.horizontal,
//         //   physics: const BouncingScrollPhysics(),
//         //   child: Container(
//         //     margin: EdgeInsets.only(bottom: 29.h),
//         //     // color: Colors.red ,
//         //     child: Row(
//         //       children: [
//         //         const SizedBox(width: 15),
//         //         Container(
//         //           alignment: Alignment.topLeft,
//         //           height: 160,
//         //           width: 300,
//         //           decoration: BoxDecoration(
//         //               borderRadius: BorderRadius.circular(15.r),
//         //               boxShadow: kContainerShadow,
//         //               image: const DecorationImage(
//         //                   image: AssetImage(AssetsData.homeOne),
//         //                   fit: BoxFit.cover)),
//         //           child: Padding(
//         //             padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
//         //             child: Column(
//         //               crossAxisAlignment: CrossAxisAlignment.start,
//         //               mainAxisAlignment: MainAxisAlignment.end,
//         //               children: [
//         //                 const CustomHomeText(
//         //                     text: "How to Add lightning effect in photos"),
//         //                 SizedBox(
//         //                   height: 3.h,
//         //                 ),
//         //                 const CustomHomeText(
//         //                   text: "Photoshop",
//         //                   fontSize: 13,
//         //                   color: kGreyColor,
//         //                 ),
//         //               ],
//         //             ),
//         //           ),
//         //         ),
//         //         const SizedBox(width: 15),
//         //         Container(
//         //           alignment: Alignment.topLeft,
//         //           height: 160,
//         //           width: 300,
//         //           decoration: BoxDecoration(
//         //               boxShadow: kContainerShadow,
//         //
//         //               borderRadius: BorderRadius.circular(15.r),
//         //               color: Colors.red,
//         //               image: const DecorationImage(
//         //                   image: AssetImage(AssetsData.homeOne),
//         //                   fit: BoxFit.cover)),
//         //           child: Padding(
//         //             padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
//         //             child: Column(
//         //               crossAxisAlignment: CrossAxisAlignment.start,
//         //               mainAxisAlignment: MainAxisAlignment.end,
//         //               children: [
//         //                 const CustomHomeText(
//         //                     text: "How to Add lightning effect in photos"),
//         //                 SizedBox(
//         //                   height: 3.h,
//         //                 ),
//         //                 const CustomHomeText(
//         //                   text: "Photoshop",
//         //                   fontSize: 13,
//         //                   color: kGreyColor,
//         //                 ),
//         //               ],
//         //             ),
//         //           ),
//         //         ),
//         //         const SizedBox(width: 15),
//         //       ],
//         //     ),
//         //   ),
//         // ),
//         // Padding(
//         //   padding: EdgeInsets.only( left: 15.w),
//         //   child: Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       const CustomHomeText(
//         //         text: "Our Free Courses",
//         //         color: kBlackColor,
//         //         fontSize: 14,
//         //       ),
//         //       IconButton(
//         //           onPressed: () {},
//         //           icon: SvgPicture.asset(AssetsData.arrowRightSvg))
//         //     ],
//         //   ),
//         // ),
//         // SingleChildScrollView(
//         //   scrollDirection: Axis.horizontal,
//         //   physics: const BouncingScrollPhysics(),
//         //   child: Container(
//         //     margin: EdgeInsets.only(bottom: 29.h),
//         //     child: Row(
//         //       children: [
//         //         const SizedBox(width: 15),
//         //         Container(
//         //           height: 140,
//         //           width: 131,
//         //           decoration: BoxDecoration(
//         //             color: Colors.white,
//         //             boxShadow: kContainerShadow,
//         //             borderRadius: BorderRadius.circular(15.r),
//         //             // color: Colors.red
//         //           ),
//         //           child: Column(
//         //             children: [
//         //               Container(
//         //                 alignment: Alignment.topLeft,
//         //                 height: 72,
//         //                 width: 131,
//         //                 decoration: const BoxDecoration(
//         //                     borderRadius: BorderRadius.only(
//         //                         topLeft: Radius.circular(15),
//         //                         topRight: Radius.circular(15)),
//         //                     // color: Colors.red,
//         //                     image: DecorationImage(
//         //                         image:
//         //                         AssetImage(AssetsData.rectangleCopyOne),
//         //                         fit: BoxFit.cover)),
//         //               ),
//         //               Padding(
//         //                 padding: EdgeInsets.only(left: 20.w, bottom: 10.h,top: 18.h),
//         //                 child: Column(
//         //                   crossAxisAlignment: CrossAxisAlignment.start,
//         //                   mainAxisAlignment: MainAxisAlignment.end,
//         //                   children: const [
//         //                     CustomHomeText(
//         //                       text: "Arts and Humanities",
//         //                       color: kSecondaryColor,
//         //                     ),
//         //                     SizedBox(
//         //                       // height: 13.h,
//         //                     ),
//         //                   ],
//         //                 ),
//         //               ),
//         //               // ),
//         //             ],
//         //           ),
//         //         ),
//         //         const SizedBox(width: 15),
//         //         Container(
//         //           // margin: EdgeInsets.only(bottom: 50),
//         //           height: 140,
//         //           width: 131,
//         //           decoration: BoxDecoration(
//         //             color: Colors.white,
//         //             boxShadow: kContainerShadow,
//         //             borderRadius: BorderRadius.circular(15.r),
//         //             // color: Colors.red
//         //           ),
//         //           child: Column(
//         //             children: [
//         //               Container(
//         //                 alignment: Alignment.topLeft,
//         //                 height: 72,
//         //                 width: 131,
//         //                 decoration: const BoxDecoration(
//         //                     borderRadius: BorderRadius.only(
//         //                         topLeft: Radius.circular(15),
//         //                         topRight: Radius.circular(15)),
//         //                     // color: Colors.red,
//         //                     image: DecorationImage(
//         //                         image:
//         //                         AssetImage(AssetsData.rectangleCopyTwo),
//         //                         fit: BoxFit.cover)),
//         //               ),
//         //               Padding(
//         //                 padding: EdgeInsets.only(left: 20.w, bottom: 10.h,top: 18.h),
//         //                 child: Column(
//         //                   crossAxisAlignment: CrossAxisAlignment.start,
//         //                   mainAxisAlignment: MainAxisAlignment.end,
//         //                   children: const [
//         //                     CustomHomeText(
//         //                       text: "Computer Science",
//         //                       color: kSecondaryColor,
//         //                     ),
//         //                     SizedBox(
//         //                       // height: 13.h,
//         //                     ),
//         //                   ],
//         //                 ),
//         //               ),
//         //               // ),
//         //             ],
//         //           ),
//         //         ),
//         //         const SizedBox(width: 15),
//         //         Container(
//         //           height: 140,
//         //           width: 131,
//         //           decoration: BoxDecoration(
//         //             color: Colors.white,
//         //             boxShadow: kContainerShadow,
//         //             borderRadius: BorderRadius.circular(15.r),
//         //             // color: Colors.red
//         //           ),
//         //           child: Column(
//         //             children: [
//         //               Container(
//         //                 alignment: Alignment.topLeft,
//         //                 height: 72,
//         //                 width: 131,
//         //                 decoration: const BoxDecoration(
//         //                     borderRadius: BorderRadius.only(
//         //                         topLeft: Radius.circular(15),
//         //                         topRight: Radius.circular(15)),
//         //                     // color: Colors.red,
//         //                     image: DecorationImage(
//         //                         image:
//         //                         AssetImage(AssetsData.rectangleCopyThree),
//         //                         fit: BoxFit.cover)),
//         //               ),
//         //               Padding(
//         //                 padding: EdgeInsets.only(left: 20.w, bottom: 10.h,top: 18.h),
//         //                 child: Column(
//         //                   crossAxisAlignment: CrossAxisAlignment.start,
//         //                   mainAxisAlignment: MainAxisAlignment.end,
//         //                   children: const [
//         //                     CustomHomeText(
//         //                       text: "Economics and Finance",
//         //                       color: kSecondaryColor,
//         //                     ),
//         //                     SizedBox(
//         //                       // height: 13.h,
//         //                     ),
//         //                   ],
//         //                 ),
//         //               ),
//         //               // ),
//         //             ],
//         //           ),
//         //         ),
//         //         const SizedBox(width: 15),
//         //       ],
//         //     ),
//         //   ),
//         //
//         // ),
//         // Padding(
//         //   padding: EdgeInsets.only( left: 15.w),
//         //   child: Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       const CustomHomeText(
//         //         text: "Our Paid Courses",
//         //         color: kBlackColor,
//         //         fontSize: 14,
//         //       ),
//         //       IconButton(
//         //           onPressed: () {},
//         //           icon: SvgPicture.asset(AssetsData.arrowRightSvg))
//         //     ],
//         //   ),
//         // ),
//         Container(
//           margin: EdgeInsets.only(bottom: 100.h),
//           height: 140,
//           child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Container(
//                   // height: 140,
//                   width: 131,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: kContainerShadow,
//                     borderRadius: BorderRadius.circular(15.r),
//                     // color: Colors.red
//                   ),
//                   child: Column(
//                     children: [
//                       Container(
//                         alignment: Alignment.topLeft,
//                         height: 72,
//                         width: 131,
//                         decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(15),
//                                 topRight: Radius.circular(15)),
//                             // color: Colors.red,
//                             image: DecorationImage(
//                                 image: AssetImage(AssetsData.homeThreeOne),
//                                 fit: BoxFit.cover)),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             left: 20.w, bottom: 10.h, top: 18.h),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: const [
//                             CustomHomeText(
//                               text: "Social Media Marketing",
//                               color: kSecondaryColor,
//                             ),
//                             SizedBox(
//                                 // height: 13.h,
//                                 ),
//                           ],
//                         ),
//                       ),
//                       // ),
//                     ],
//                   ),
//                 );
//               },
//               separatorBuilder: (context, i) => const SizedBox(width: 15),
//               itemCount: 5),
//         ),
//       ],
//     ),
//   ),
// );
