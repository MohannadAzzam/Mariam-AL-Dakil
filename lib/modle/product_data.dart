import 'package:mariam_aldakhil/core/utils/assets.dart';

class Product {
  int id;
  String image;
  String title;
  double price;
  double tax;

  Product(this. id ,this.image, this.title, this.price, this.tax);
}

class ProductList {
  List<Product> productList = [
    Product(0,AssetsData.img, "The Earth Ceramic Coffee Mug", 208, 0.15),
    Product(1, AssetsData.homeThreeThree, "Numeric Flashcard For Kids", 3.87, 0.20),
    Product(2,AssetsData.homeOne, "Short Love Stories", 7.74, 0.30),
    Product(3,AssetsData.homeThreeTwo, "Time Management", 7.50, 0.1),
    Product(4,AssetsData.ratingFaceImage, "Pink Coffee Mug", 280, 0.12),
    Product(5,AssetsData.rectangleCopyTwo, "Kids Bed Time Stories ", 280, 0.16),
    Product(6,AssetsData.rectangleCopyOne, "Relationship Mugs", 280, 0.56),
  ];
}
