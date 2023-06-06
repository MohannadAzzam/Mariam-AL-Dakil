import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/////////////////////////////////////////////////////////////////////////
// Color constants
const kButtonColor = Color(0xffECB7BF);
const kSecondaryColor = Color(0xffC99200);
const kBlackColor = Color(0xff2A2525);
const kGreyColor = Color(0xffBEBEBE);
const kDrawerBorder = Color(0xffF2F2F2);

const kContainerShadow = [

    BoxShadow(
        // blurStyle: BlurStyle.solid,
        // color: Color(0xff000000),
        color: Color(0x1a000000),
        blurRadius: 19,
        offset: Offset(0, 12),
        spreadRadius: 0)

];

////////////////////////////////////
//App bar
const kAppBarFontWeight = FontWeight.w900;
const kAppBarColor = Color(0xffECB7BF);
const kAppBarElevation = 0.0;

///////////////////////////
const kAuthPadding = 30.0;
// MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 30.0));

/////////////////////////////////////////////////////////////////////////
// Button constants
const kBorderRadius = 30.0;
const kButtonElevation = 0.0;
const kButtonTextColor = Color(0xff4A3336);
const kButtonSize = Size(315, 55);
const kButtonFontWeight = FontWeight.w900;

/////////////////////////////////////////////////////////////////////////
// Text constants
const kAuthTextFontSize = 16;
