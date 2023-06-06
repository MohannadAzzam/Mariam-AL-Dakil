import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import '../../widget/custom_home_text.dart';

class DrawerUnit extends StatelessWidget {
  final bool hasBorder;
  final String text;
  final String icon;
  final String? route;
  final Function()? onTap;

   const DrawerUnit(
      {Key? key,
      required this.hasBorder,
      required this.text,
      required this.icon, this.route, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: ListTile(

        style: ListTileStyle.drawer,

        shape: hasBorder == true
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: kDrawerBorder, ),
              )
            : const RoundedRectangleBorder(),
        // leading: SvgPicture.asset(AssetsData.contactSvg),
        onTap: onTap,

        title: Row(
          children: [
            SizedBox(
              width: 30.w,
            ),
            SvgPicture.asset(icon),
            SizedBox(
              width: 27.w,
            ),
            CustomHomeText(text: text)
          ],
        ),
      ),
    );
  }
}
