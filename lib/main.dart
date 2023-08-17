import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mariam_aldakhil/constants.dart';
import 'package:mariam_aldakhil/views/courses/addCourseReviewView/add_course_Review_view.dart';
import 'package:mariam_aldakhil/views/auth/forgot_password/forgot_password_page.dart';
import 'package:mariam_aldakhil/views/auth/login/login_view.dart';
import 'package:mariam_aldakhil/views/auth/register/register_page.dart';
import 'package:mariam_aldakhil/views/courses/courseDetails/course_details_view.dart';
import 'package:mariam_aldakhil/views/courses/courseView/course_view.dart';
import 'package:mariam_aldakhil/views/homeView/home_view.dart';
import 'package:mariam_aldakhil/views/courses/myCourseDetails/my_course_details.dart';
import 'package:mariam_aldakhil/views/news/news_details/news_details_view.dart';
import 'package:mariam_aldakhil/views/news/news_view/news_view.dart';
import 'package:mariam_aldakhil/views/reviewsView/reviews_view.dart';

import 'test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: GoogleFonts.playfairDisplay().toString(),
            // useMaterial3: true,
            appBarTheme: AppBarTheme(
                elevation: kAppBarElevation,
                titleTextStyle: GoogleFonts.playfairDisplay(
                    color: kBlackColor,
                    fontSize: 18,
                    fontWeight: kAppBarFontWeight),
                backgroundColor: kAppBarColor,
                centerTitle: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.zero,
                        topLeft: Radius.zero,
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r)))),
            primarySwatch: Colors.blue,
          ),
          getPages: [
            GetPage(
              name: '/',
              page: () => const TestPage(),
              transition: Transition.fade,
            ),
            GetPage(
                name: '/loginPage',
                page: () => const LoginPage(),
                transition: Transition.fade),
            GetPage(
                name: '/RegisterPage',
                page: () => const RegisterPage(),
                transition: Transition.fade),
            GetPage(
                name: '/forgotPasswordPage',
                page: () => const ForgotPasswordPage(),
                transition: Transition.fade),
            GetPage(
                name: '/homePage',
                page: () => const HomePage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/coursePage',
                page: () => const CoursePage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/courseDetailsPage',
                page: () => const CourseDetailsPage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/myCourseDetailsPage',
                page: () => const MyCourseDetailsPage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/addCourseReviewPage',
                page: () => const AddCourseReviewPage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/reviewsPage',
                page: () => const ReviewsPage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/newsPage',
                page: () => const NewsPage(),
                transition: Transition.fadeIn),
            GetPage(
                name: '/newsDetailsPage',
                page: () => const NewsDetailsPage(),
                transition: Transition.fadeIn),
          ],
          // home:
        );
      },
    );
  }
}
