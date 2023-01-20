import 'package:app_dentist/ui/pages/my_appointments/components/past.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/my_appointments/components/upcoming.dart';
import 'package:app_dentist/ui/pages/my_appointments/controller/my_appointments_controller.dart';

class ContainerTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double witdhScreen = MediaQuery.of(context).size.width;

    return GetBuilder<MyAppointmentsController>(
      init: MyAppointmentsController(),
      builder: (_) => AnimatedContainer(
        duration: Duration(milliseconds: 600),
        height: _.tabController.index == 0
            ? 220.0 + _.numAppointments * 170.0
            : 500,
        margin: EdgeInsets.symmetric(horizontal: 35), //witdhScreen * 0.09
        child: AnimatedContainer(
          duration: Duration(milliseconds: 0),
          curve: Curves.fastOutSlowIn,
          child: TabBarView(
            children: <Widget>[
              Upcoming(),
              Past(),
            ],
            controller: _.tabController,
          ),
        ),
      ),
    );
  }
}
