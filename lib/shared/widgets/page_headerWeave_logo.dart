import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/shared/widgets/header_weave2.dart';
import 'package:app_dentist/shared/widgets/logo.dart';

class HeaderLogoPage extends StatelessWidget {
  final String pageTitle;
  final Widget body;

  HeaderLogoPage({@required this.pageTitle, @required this.body});

  Size size;

  @override
  Widget build(BuildContext context) {
    size = Get.size;

    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitle),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () => Navigator.pushReplacement(
          //       context, MaterialPageRoute(builder: (context) => BottomBar())),
          // ),
        ),
        body: Stack(
          children: [
            HeaderWave2(),
            Positioned(
                left: size.width / 2 - 170 / 2,
                top: 25,
                child: Center(child: LogoApp())),
            body
            // _showImages(),
          ],
        ));
  }
}
