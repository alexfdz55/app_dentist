import 'package:app_dentist/ui/pages/gallery/screen/gallery_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/home/controller/home_controller.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Padding(
        padding: EdgeInsets.only(top: 40),
        child: MaterialButton(
            shape: StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: Container(
                height: 45,
                child: Center(
                    child: Text('Book an appointment',
                        style: Theme.of(context).textTheme.headline4))),
            onPressed: () {}),
      ),
    );
  }
}
