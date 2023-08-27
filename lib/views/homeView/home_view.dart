import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mariam_aldakhil/core/utils/assets.dart';
import 'package:mariam_aldakhil/views/homeView/drawer/drawer_body.dart';
import 'package:mariam_aldakhil/views/homeView/home_view_body.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          "Home",
        ),
      ),
      body: SafeArea(child: const HomeViewBody()),
    );
  }
}
