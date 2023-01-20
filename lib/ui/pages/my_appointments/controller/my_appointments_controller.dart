import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppointmentsController extends GetxController
    with SingleGetTickerProviderMixin {
  TabController tabController;
  final List<Tab> programsTabs = <Tab>[
    Tab(text: 'Uncoming'),
    Tab(text: 'Past'),
  ];

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: programsTabs.length)
      ..addListener(() {
        update();
      });

    super.onInit();
  }

  int numAppointments = 5;

  @override
  void onClose() {
    tabController?.dispose();
    super.onClose();
  }
}
