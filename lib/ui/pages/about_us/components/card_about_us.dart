import 'package:app_dentist/ui/pages/about_us/controller/about_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardAboutUs extends StatelessWidget {
  final TextStyle textStyle = TextStyle(
    color: Color(0xff161F3D).withOpacity(0.75),
    fontSize: 13,
  );

  //final title =

  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return GetBuilder<AboutUsController>(
      init: AboutUsController(),
      builder: (_) => Padding(
        padding: EdgeInsets.only(
            left: _.widthScreen * 0.093,
            right: _.widthScreen * 0.093,
            top: 180),
        child: Card(
          //color: Colors.white,
          child: Container(
            height: 396,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, right: 89, top: 14),
                  child: Column(
                    children: [
                      _title(),
                      SizedBox(height: 14),
                      _info1()
                      //
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 35, right: 30, top: 14),
                    child: _info2()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'Welcome to Mid Wilshire, Dental Care',
      style: Theme.of(ctx).textTheme.headline2,
    );
  }

  Widget _info1() {
    return Text(
      'There is this awesome event happening. Let’s join it guys. There is this awesome event happening. Let’s join it guys. There is this awesome event happening. Let’s join it guys. There is this awesome event happening. Let’s join it guys. There is this awesome event happening. Let’s join it guys. ',
      style: textStyle,
      textAlign: TextAlign.left,
    );
  }

  Widget _info2() {
    return Text(
      'There is this awesome event happening. Let’s join it guys.There is this awesome event happening. Let’s join it guys.',
      style: textStyle,
      textAlign: TextAlign.left,
    );
  }
}
