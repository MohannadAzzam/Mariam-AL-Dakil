import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/assets.dart';
import '../homeView/drawer/drawer_body.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

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
        title: const Text('Course'),
      ),
    );
  }
}
