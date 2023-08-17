import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/utils/assets.dart';
import '../../../modle/news_data.dart';
import '../../homeView/drawer/drawer_body.dart';

import 'widgets/custom_news_card.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List newsList = NewsList().newsList;
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
          "News",
        ),
      ),
      // ),
      // backgroundColor:
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return CustomNewsCard(
              image: newsList[index].image,
              title: newsList[index].title,
              date: newsList[index].date,
              onTap: () {
                Get.toNamed('newsDetailsPage', arguments: [
                  {"image": newsList[index].image},
                  {"title": newsList[index].title},
                  {"date": newsList[index].date}
                ]);
              },
            );
          }),
    );
  }
}
