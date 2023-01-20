import 'package:app_dentist/shared/widgets/custom_bottom_navigation/controller/custom_bottom_navigation_controller.dart';
import 'package:app_dentist/shared/widgets/custom_bottom_navigation/items/custom_bottom_navigation_item.dart';
import 'package:app_dentist/shared/widgets/custom_bottom_navigation/model/custom_bottom_navigation.dart';
import 'package:app_dentist/shared/widgets/svg_icon.dart';
import 'package:app_dentist/ui/pages/about_us/screen/about_us_page.dart';
import 'package:app_dentist/ui/pages/contact_us/screen/contact_us_page.dart';
import 'package:app_dentist/ui/pages/doc_blog/screen/doc_blog_page.dart';
import 'package:app_dentist/ui/pages/home/screen/home_page.dart';
import 'package:app_dentist/ui/pages/rech_us/screen/rech_us_page.dart';
import 'package:app_dentist/ui/pages/services_/screen/services_page.dart';
import 'package:app_dentist/ui/pages/testimonials/screen/testimonials_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomBar extends StatefulWidget {
  final Widget page2;
  final int index;

  final Widget page4;
  final String svgIconTitle2;
  final String svgIconTitle4;

  CustomBottomBar({
    this.page2,
    this.page4,
    this.svgIconTitle2 = 'Message',
    this.svgIconTitle4 = 'Doc Blog',
    this.index,
  });
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex; // = 2;

  Color selectColor;
  Color unSelectColor;

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      _currentIndex = widget.index;
    } else {
      if (widget.page2 != null) {
        _currentIndex = 1;
      } else if (widget.page4 != null) {
        _currentIndex = 3;
      } else {
        _currentIndex = 2;
      }
    }
    setState(() {});
  }
  //PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomNavigationController>(
        init: CustomBottomNavigationController(),
        builder: (_) {
          selectColor = Theme.of(context).primaryColor;
          unSelectColor = Theme.of(context).hintColor;
          return Scaffold(
            body: IndexedStack(
              index: _currentIndex,
              children: <Widget>[
                for (final item in items()) item.page,
              ],
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: _currentIndex,
              onChange: (index) {
                _.index = index;
                setState(() => _currentIndex = index);
              },
              backgroundColor: Colors.white,
              // children: _items(),
              children: items(),
              //  <CustomBottomNavigationItem>[
              //   for (final tabItem in CustomBottomNavigationItem.items)
              //     CustomBottomNavigationItem(
              //       //backgroundColor: Colors.white,
              //       icon: tabItem.icon,
              //       //title: tabItem.title,
              //     ),
              // ],
            ),
          );
        });
  }

  Color colorIcon(int ind) {
    // int index = Get.find<CustomBottomNavigationController>().index;
    return (ind == _currentIndex) ? selectColor : unSelectColor;
  }

  List<CustomBottomNavigationItem> items() {
    return [
      CustomBottomNavigationItem(
        page: ReachUsPage(),
        icon: Container(
          height: 22,
          width: 22,
          child: Image(
            image: AssetImage('assets/bottom_bar/Location.png'),
            color: colorIcon(0),
          ),
        ),
      ),
      CustomBottomNavigationItem(
        page: (widget.page2 == null) ? TestimonialsPage() : widget.page2,
        icon: SvgIcon(
          svg: widget.svgIconTitle2,
          color: colorIcon(1),
        ),
      ),
      CustomBottomNavigationItem(
        page: HomePage(),
        icon: Container(
            child: CircleAvatar(
                backgroundColor: selectColor,
                radius: 20,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bottom_bar/home.png')),
                ))),
      ),
      CustomBottomNavigationItem(
        // page: ServicesPage(),
        page: (widget.page4 == null) ? DocBlogPage() : widget.page4,
        icon: SvgIcon(
          svg: widget.svgIconTitle4,
          //svg: 'Services',
          color: colorIcon(3),
        ),
      ),
      CustomBottomNavigationItem(
        page: ContactUsPage(),
        icon: SvgIcon(
          svg: 'Person',
          color: colorIcon(4),
        ),
      ),
    ];
  }
}
