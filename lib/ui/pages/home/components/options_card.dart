import 'package:app_dentist/ui/pages/home/components/svg_custom.dart';
import 'package:app_dentist/ui/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final Widget page;

  OptionCard({this.title = 'Services', this.page});

  Color color = Colors.grey;
  bool seccionado = false;
  Widget check = Container();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'card_categoria',
      init: HomeController(),
      builder: (_) => MaterialButton(
        padding: EdgeInsets.all(0),
        minWidth: _.widthScreen * 0.253,
        child: Container(
          padding: EdgeInsets.only(top: 10),
          height: _.widthScreen * 0.253,
          width: _.widthScreen * 0.253,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(1.0, 2.0))
              ]),
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    SvgCustom(title: title),
                    SizedBox(height: 5),
                    Text(this.title,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Get.to(page, transition: Transition.leftToRight);
        },
      ),
    );
  }
}
