
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:mariam_aldakhil/views/courses/addCourseReviewView/widgets/custom_form_filed.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';

import '../../../core/utils/assets.dart';

class AddCourseReviewPage extends StatelessWidget {
  const AddCourseReviewPage({Key? key}) : super(key: key);

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
        title: const Text("Add Course Review"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 25.h, left: 15.w, right: 15.w, bottom: 25),
          child: Column(
            children: [
              const CustomText(
                text: "Diploma Of Information Technology Networking",
                fontSize: 18,
              ),
              Row(
                children: const [
                  CustomText(
                    text: "By ",
                    fontSize: 12,
                  ),
                  CustomText(
                    text: "Gilberto S. Osborne ",
                    fontSize: 12,
                    color: kGreyColor,
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              const CustomText(
                text: 'Tap To Add Ratings',
                fontSize: 12,
              ),
              SizedBox(
                height: 23.h,
              ),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 5.w),
                itemBuilder: (context, _) => SvgPicture.asset(
                  AssetsData.fullStarSvg,
                ),
                onRatingUpdate: (rating) {
                  // print(rating);
                },
              ),
              SizedBox(
                height: 71.h,
              ),
              const CustomRatingFormFiled(hint: 'Write Your Review'),
              SizedBox(
                height: 7.h,
              ),
              const CustomButton(
                text: "SUBMIT",
                width: 345,
              )
            ],
          ),
        ),
      )),
    );
  }
}
