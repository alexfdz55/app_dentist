import 'package:app_dentist/shared/widgets/custom_bottom_navigation/controller/custom_bottom_navigation_controller.dart';
import 'package:app_dentist/ui/pages/contact_us/screen/contact_us_page.dart';
import 'package:app_dentist/ui/pages/home/screen/home_page.dart';
import 'package:app_dentist/ui/pages/rech_us/screen/rech_us_page.dart';
import 'package:app_dentist/ui/pages/services_/screen/services_page.dart';
import 'package:app_dentist/ui/pages/testimonials/screen/testimonials_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Color selectColor = Get.find<CustomBottomNavigationController>().selectColor;

// Color unSelectColor =
//     Get.find<CustomBottomNavigationController>().unSelectColor;

// Color colorIcon(int ind) {
//   int index = Get.find<CustomBottomNavigationController>().index;
//   return (ind == index) ? selectColor : unSelectColor;
// }

class CustomBottomNavigationItem {
  final Widget icon;
  final String label;
  final Color color;
  final Widget page;

  CustomBottomNavigationItem({
    this.page,
    @required this.icon,
    this.label,
    this.color,
  });
}
