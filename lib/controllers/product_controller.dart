import 'package:get/get.dart';

class ProductController extends GetxController{

  var productCount = 1;


   increment (){
  productCount ++;
  update();
  }

  decrement (){
     if(productCount<=1){
       return;
     }
     productCount --;
  update();

   }

}