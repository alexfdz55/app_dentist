import 'package:app_dentist/ui/pages/contact_us/screen/contact_us_page.dart';
import 'package:app_dentist/ui/pages/doc_blog/screen/doc_blog_page.dart';
import 'package:app_dentist/ui/pages/home/screen/home_page.dart';
import 'package:app_dentist/ui/pages/login/screen/login_page.dart';
import 'package:app_dentist/ui/pages/rech_us/screen/rech_us_page.dart';
import 'package:app_dentist/ui/pages/services_/screen/services_page.dart';
import 'package:app_dentist/ui/pages/splash/screen/splash_page.dart';
import 'package:app_dentist/ui/pages/tabs/components/svg_bottom_bar.dart';
import 'package:app_dentist/ui/pages/testimonials/screen/testimonials_page.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;
  final Color color;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
    this.color,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: ReachUsPage(),
          icon: Icon(Icons.home_repair_service_outlined),
          title: Text(''),
        ),
        TabNavigationItem(
          page: TestimonialsPage(),
          icon: Icon(Icons.home_repair_service_outlined),
          title: Text(''),
        ),
        // TabNavigationItem(
        //   page: HomePage(),
        //   icon: Icon(Icons.home_repair_service_outlined),
        //   title: (title: 'Home'),
        // ),
        TabNavigationItem(
          page: HomePage(),
          icon: Icon(Icons.home_repair_service_outlined),
          title: Icon(Icons.home_repair_service_outlined),
          //Text(''),
        ),
        TabNavigationItem(
          page: ServicesPage(),
          icon: Icon(Icons.home_repair_service_outlined),
          title: Text(''),
        ),
        TabNavigationItem(
          page: ContactUsPage(),
          icon: Icon(Icons.home_repair_service_outlined),
          title: Text(''),
        ),
      ];
}
