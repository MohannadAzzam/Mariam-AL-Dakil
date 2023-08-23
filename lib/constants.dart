import 'dart:ui';

import 'package:flutter/material.dart';

/////////////////////////////////////////////////////////////////////////
// Color constants
const kPrimaryColor = Color(0xffECB7BF);
Color kPrimaryColorOP30 = const Color(0xffECB7BF).withOpacity(0.3);
const kButtonColor = Color(0xffECB7BF);
const kGoldenColor = Color(0xffC99200);
const kBlackColor = Color(0xff2A2525);
const kGreyColor = Color(0xffBEBEBE);
const kLightGreyColor = Color(0xffF2F2F2);
const kDarkGreyColor = Color(0xff717171);
const kDrawerBorder = Color(0xffF2F2F2);
const kTextFormBorder = Color(0xffE1E1E1);

const kContainerShadow = [
  BoxShadow(
      // blurStyle: BlurStyle.solid,
      // color: Color(0xff000000),
      color: Color(0x1a000000),
      blurRadius: 19,
      offset: Offset(0, 12),
      spreadRadius: 0)
];

const kPlayContainerShadow = [
  BoxShadow(
      // blurStyle: BlurStyle.normal,
      // blurStyle: BlurStyle.solid,
      // color: Color(0xff000000),
      color: Color(0x1a000000),
      blurRadius: 100,
      offset: Offset(0, 0),
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
