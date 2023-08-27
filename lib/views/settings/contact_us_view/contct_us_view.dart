import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mariam_aldakhil/views/homeView/widget/custom_home_text.dart';

import '../../../constants.dart';
import '../../../core/utils/assets.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> _controller =
        Completer<GoogleMapController>();
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(
                AssetsData.back,
              ));
        }),
        title: const Text("Contact Us"),
      ),
      body: SafeArea(
          child: SingleChildScrollView( physics: const BouncingScrollPhysics(),
        child:
            //  Container(
            //     decoration: const BoxDecoration(
            //     color: Colors.white,
            //     boxShadow: kContainerShadow,
            //     borderRadius: BorderRadius.all(Radius.circular(15))),
            //     margin: EdgeInsets.only(top: 25.h, left: 15.w, right: 15.w),
            //     child: Column(
            //       children: [
            GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        //     Container(
        //       height: 77.h,
        //       width: 345.w,
        //       padding: const EdgeInsets.all(15),
        //       child: Column(children: const [
        //         CustomText(text: "26 22b St, Dubai United Arab Emirates")
        //       ]),
        //     )
        //   ],
        // )),
      )),
    );
  }
}
