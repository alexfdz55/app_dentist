import 'package:app_dentist/ui/pages/services_/components/card_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/services_/components/card_services_info.dart';
import 'package:app_dentist/ui/pages/services_/controller/services_controller.dart';

class ServicesPage extends StatelessWidget {
  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;

    return GetBuilder<ServicesController>(
      init: ServicesController(),
      builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text('Services'),
          ),
          body: ListView(
            children: [
              CardServicesInfo(),
              _text(),
              CardsServices(),
            ],
          )),
    );
  }

  Widget _text() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 15, left: 75),
      child: Text(
        'Following are our services',
        style: Theme.of(ctx).textTheme.headline2,
        textAlign: TextAlign.left,
      ),
    );
  }
}
