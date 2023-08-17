import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants.dart';
import '../../../homeView/widget/custom_home_text.dart';

class CustomNewsCard extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final Function()? onTap;
  const CustomNewsCard({Key? key, required this.image, required this.title, required this.date, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h,)
        ,
        Container(
          margin:
          EdgeInsets.only(bottom: 15.h, left: 15.w, right: 15.w, ),
          height: 218.h,
          width: 345.w,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: kContainerShadow,
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: 130.h,
                    width: 345.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      CustomText(
                        text:
                        title,
                        fontSize: 15,
                      ),
                      CustomText(
                        text: date,
                        fontSize: 12,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
