import 'package:get/get.dart';

class CoursesController extends GetxController{
  var click = 1;

   allCourses(){
  click = 1;
  update();
  }
  myCourses(){
    click =2;
    update();
  }
}