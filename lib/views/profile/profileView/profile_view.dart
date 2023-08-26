import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/core/utils/assets.dart';
import 'package:mariam_aldakhil/core/utils/custom_button.dart';
import 'package:mariam_aldakhil/modle/profile_data.dart';
import 'package:mariam_aldakhil/views/homeView/drawer/drawer_body.dart';
import 'package:mariam_aldakhil/views/profile/profileView/widgets/custom_profile_data.dart';

import '../../../constants.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List profileData = ProfileList().profileList;
    List profiletype = ProfileList().profileType;

    return Scaffold(
      drawer: const Drawer(
        child: DrawerBody(),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('editProfilePage');
              },
              icon: SvgPicture.asset(
                AssetsData.editSvg,
              ))
        ],
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset(
                AssetsData.menuSvg,
              ));
        }),
        title: const Text(
          "My Profile",
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 21.h, left: 15.w, right: 15.w),
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.r,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      boxShadow: kContainerShadow,
                      color: Colors.white),
                  child: CircleAvatar(
                    radius: 60.r,
                    foregroundImage:
                        const AssetImage(AssetsData.drawerProfileImage),
                  ),
                ),
              ),
              SizedBox(height: 21.h),
              const CustomButton(
                text: "UPLOAD/CHANGE PHOTO",
                width: 280,
              ),
              SizedBox(height: 21.h),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: kContainerShadow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return CustomProfileData(
                            type: profiletype[index],
                            text: profileData[index],
                          );
                        },
                        separatorBuilder: (context, i) {
                          return Divider(
                            thickness: 1.r,
                          );
                        },
                        itemCount: profileData.length)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
