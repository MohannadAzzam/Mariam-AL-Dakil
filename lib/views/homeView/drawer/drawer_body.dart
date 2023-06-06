import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/views/courseView/course_view.dart';
import 'package:mariam_aldakhil/views/homeView/drawer/drawer_widget/drawer_unit.dart';

import '../../../constants.dart';
import '../../../core/utils/assets.dart';
import '../widget/custom_home_text.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 83.w, right: 83.w, top: 50.h, bottom: 15.h),
              child: CircleAvatar(
                radius: 60.r,
                foregroundImage:
                    const AssetImage(AssetsData.drawerProfileImage),
              ),
            ),
            const CustomHomeText(
              text: "Rachelle D. Michael",
              fontSize: 22,
            ),
            SizedBox(
              height: 44.h,
            ),
            DrawerUnit(
              hasBorder: true,
              text: "Home",
              icon: AssetsData.homeSvg,
              onTap: () => Get.offAllNamed('/homePage'),
            ),
            DrawerUnit(
              hasBorder: false,
              text: "Course",
              icon: AssetsData.bookSvg,
              onTap: () => Get.offAllNamed('/coursePage'),
            ),
            const DrawerUnit(
                hasBorder: true, text: "News", icon: AssetsData.newsSvg),
            const DrawerUnit(
                hasBorder: false,
                text: "Products",
                icon: AssetsData.productSvg),
            const DrawerUnit(
                hasBorder: true, text: "Cart", icon: AssetsData.cartSvg),
            const DrawerUnit(
                hasBorder: false,
                text: "My Profile",
                icon: AssetsData.profileSvg),
            const DrawerUnit(
                hasBorder: true,
                text: "Settings",
                icon: AssetsData.settingsSvg),
            const DrawerUnit(
                hasBorder: false, text: "LogOut", icon: AssetsData.logoutSvg),
            // Divider(color: kGreyColor ,thickness: 1.h,),
          ],
        ),
      ],
    );
  }
}
