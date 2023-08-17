import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/views/reviewsView/widgets/revies_custom_reviewer_card.dart';
import 'package:random_name_generator/random_name_generator.dart';

import '../../core/utils/assets.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Get.back();
                // print(random);
              },
              icon: SvgPicture.asset(
                AssetsData.back,
              ));
        }),
        title: const Text("Reviews"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                int random = Random().nextInt(5)+1;
                var randomNames = RandomNames(Zone.us);
                // print("============= $index ${randomNames.womanFullName()}");
                return CustomReviewerCard(rate: random.toDouble(),userName: randomNames.womanFullName(),);
          },
              separatorBuilder: (context,i){
            return Divider(thickness: 1.r,endIndent: 15.w,indent: 15.8,);
              },
              itemCount: 10),
        ),
      ),
    );
  }
}
