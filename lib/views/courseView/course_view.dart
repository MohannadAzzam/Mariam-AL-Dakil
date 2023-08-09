import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/views/courseView/widgets/custom_all_courses_card.dart';
import 'package:mariam_aldakhil/views/courseView/widgets/custom_my_courses_card.dart';

import '../../constants.dart';
import '../../controllers/courses_controller.dart';
import '../../core/utils/assets.dart';
import '../homeView/drawer/drawer_body.dart';
import '../homeView/widget/custom_home_text.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CoursesController());

    return Scaffold(
      drawer: const Drawer(
        child: DrawerBody(),
      ),
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: SvgPicture.asset(
                  AssetsData.menuSvg,
                ));
          }),
        title: const Text('Course'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 44.h,
              width: 345.w,
              decoration: const BoxDecoration(boxShadow: kContainerShadow),
              margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                children: [

                  Expanded(
                    child: GetBuilder<CoursesController>(
                      builder: (controller) =>
                          InkWell(
                            onTap: () {
                              controller.click;
                              controller.allCourses();
                              // print(controller.click);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: controller.click == 1 ? Colors.white : kLightGreyColor,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child:  CustomText(
                                text: "ALL COURSES",
                                color: controller.click == 1 ? kGoldenColor : kDarkGreyColor,
                              ),
                            ),
                          ),
                    ),
                  ),




                  Expanded(
                    child: GetBuilder<CoursesController>(
                      builder: (controller) =>
                          InkWell(
                            onTap: () {
                              controller.click;
                              controller.myCourses();
                              // print(controller.click);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: controller.click == 2 ? Colors.white : kLightGreyColor,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child:  CustomText(
                                text: 'MY COURSES',
                                color: controller.click == 2 ? kGoldenColor : kDarkGreyColor,
                              ),
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),

            GetBuilder<CoursesController>(builder: (coursesController)=>
            coursesController.click == 1 ?
            ListView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return const CustomAllCoursesCard();
                }
            ) :
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return const CustomMyCoursesCard();
              }
            ))

          ],
        ),
      ),
    );
  }
}
