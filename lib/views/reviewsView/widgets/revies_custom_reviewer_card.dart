import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mariam_aldakhil/core/utils/assets.dart';

import '../../../constants.dart';
import '../../homeView/widget/custom_home_text.dart';

class CustomReviewerCard extends StatelessWidget {
  final double  rate;
  final String userName;
  const CustomReviewerCard({Key? key, required this.rate, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      margin:
      EdgeInsets.only(/*bottom: 18.h,*/ left: 15.w, right: 15.w, top: 18.h),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                foregroundImage:  AssetImage(AssetsData.ratingFaceImage),
                radius: 24.r,
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    CustomText(
                      text: userName,
                      fontSize: 16,
                    ),
                    const CustomText(
                      text: "20 Jan 2020",
                      fontSize: 14,
                      color: kGreyColor,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 24.h,
                  alignment: Alignment.topRight,
                  child: RatingBar.builder(
                    initialRating: rate,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 12.r,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                    itemBuilder: (context, _) => SvgPicture.asset(
                      AssetsData.fullStarSvg,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const CustomText(
            text:
            'Use filler text where it helps your design process, but use real content if you’ve got it, as long as it doesn’t distract and slow down your design process.',
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 41.h,),

          // Divider(thickness: 1.5,)
        ],
      ),
    );
  }
}
