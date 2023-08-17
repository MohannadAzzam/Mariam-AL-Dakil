import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:readmore/readmore.dart';

import '../../../constants.dart';
import '../../../core/utils/assets.dart';

import '../../homeView/widget/custom_home_text.dart';
import '../courseDetails/widgets/custom_play_card.dart';

class MyCourseDetailsPage extends StatelessWidget {
  const MyCourseDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
         TextStyle lessAndMore = GoogleFonts.playfairDisplay(
        fontSize: 14.sp, fontWeight: FontWeight.bold, color: kBlackColor);
    var readMoreText =
        "Relax and do whatever fits with your design process. Don’t set a lot of restrictive hard-and-fast rules. Use filler text where it helps your design process, but use real content if you’ve got it, as long as it doesn’t distract and slow down your design process use real content where possible, and where it doesn’t create too much distraction Relax and do whatever fits with your design process. Don’t set a lot of restrictive hard-and-fast rules. Use filler text where it helps your design process, but use real content if you’ve got it, as long as it doesn’t distract and slow down your design process use real content where possible, and where it doesn’t create too much distraction ";
    return Scaffold(
        bottomNavigationBar: Container(
          height: 80.h,
          padding: const EdgeInsets.all(15),
          width: Get.width,
          child:  CustomButton(Text: "ADD REVIEW",onPressed: (){
            Get.toNamed('addCourseReviewPage');
          },),
        ),
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
          title: const Text('Course Details'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 25.h, left: 15.w, right: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'Diploma Of Information Technology Networking',
                    fontSize: 18,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'By ',
                        fontSize: 12,
                      ),
                      const CustomText(
                        text: 'Gilberto S. Osborne',
                        fontSize: 12,
                        color: kGreyColor,
                      ),
                      SizedBox(
                        width: 31.w,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'Start On ',
                        fontSize: 12,
                      ),
                      const CustomText(
                        text: '05 Feb 2020',
                        fontSize: 12,
                        color: kGreyColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CustomText(
                        text: '27 Lessons',
                        fontSize: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const CustomText(
                    text: '75.00 KWD',
                    fontSize: 26,
                    color: kGoldenColor,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  const CustomText(
                    text: 'About this Course',
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  ReadMoreText(
                    readMoreText,
                    lessStyle: lessAndMore,
                    moreStyle: lessAndMore,
                    trimMode: TrimMode.Length,
                    trimLength: 342,
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 13.sp, color: kDarkGreyColor),
                  ),
                  SizedBox(
                    height: 46.h,
                  ),
                  const CustomText(
                    text: 'Courses',
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListView.builder(
                      itemCount: 9,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CustomPlayCard(
                          lessonNum: index + 1,
                        );
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
