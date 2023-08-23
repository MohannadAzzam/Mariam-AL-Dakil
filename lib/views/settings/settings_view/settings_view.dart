import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mariam_aldakhil/modle/settings_data.dart';
import 'package:mariam_aldakhil/views/settings/settings_view/widgets/custom_settings_unit.dart';
import '../../../constants.dart';
import '../../../core/utils/assets.dart';
import '../../../modle/profile_data.dart';
import '../../homeView/drawer/drawer_body.dart';
import '../../homeView/widget/custom_home_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List settingList = SettingList().settingList;
    List settingsScreenList = SettingScreenList().settingScreenList;

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
          "Settings",
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
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
                        return CustomSetttingsUnit(
                          icon: settingList[index].icon,
                          text: settingList[index].text,
                          onTap: () {
                            print(settingList[index].text);
                          },
                        );
                      },
                      separatorBuilder: (context, i) {
                        return Divider(
                          thickness: 1.r,
                        );
                      },
                      itemCount: settingList.length)
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
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
                        return CustomSetttingsUnit(
                          onTap: () {
                            print(settingsScreenList[index].text);
                          },
                          icon: settingsScreenList[index].icon,
                          text: settingsScreenList[index].text,
                        );
                      },
                      separatorBuilder: (context, i) {
                        return Divider(
                          thickness: 1.r,
                        );
                      },
                      itemCount: 5)
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
