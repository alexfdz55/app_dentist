import 'package:app_dentist/shared/theme/theme.dart';

import 'package:app_dentist/shared/widgets/custom_bottom_navigation/custom_bottom_bar.dart';
import 'package:app_dentist/shared/widgets/logo.dart';

import 'package:app_dentist/ui/pages/about_us/screen/about_us_page.dart';
import 'package:app_dentist/ui/pages/gallery/screen/gallery_page.dart';
import 'package:app_dentist/ui/pages/home/screen/home_page.dart';

import 'package:app_dentist/ui/pages/login/screen/login_page.dart';
import 'package:app_dentist/ui/pages/my_appointments/screen/my_appointments_page.dart';
import 'package:app_dentist/ui/pages/splash/screen/splash_page.dart';
import 'package:app_dentist/ui/pages/tabs/pages/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Dentist',
      theme: theme,
      home: //CustomBottomBar(),
          //TabsPage(),
          // BottomBarTest(),
          //GalleryPage() //TabsPage(),
          //BottomBar(),
          //HomePage(),
          //LoginView(),
          SplashPage(),
    );
  }
}
