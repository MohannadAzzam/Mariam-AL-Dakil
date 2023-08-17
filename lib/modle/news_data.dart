import 'package:mariam_aldakhil/core/utils/assets.dart';

class News {
  String image;
  String title;
  String date;

  News(this.image, this.title, this.date);


}

class NewsList {
  List<News> newsList = [
    News(
        AssetsData.serverImage,
        "Oracle opens new cloud center in Saudi with further GCC expansion planned",
        "04 Feb 2020 at 10:10 AM"),
    News(
        AssetsData.towerImage,
        "Indian IT major eyes overseas expansion with new office in Dubai",
        "3 Feb 2020 at 01:46 PM"),
    News(
        AssetsData.carImage,
        "Dubai's transport authority set to launch e-Parking system",
        "3 Feb 2020 at 11:30 AM"),
  ];
}


