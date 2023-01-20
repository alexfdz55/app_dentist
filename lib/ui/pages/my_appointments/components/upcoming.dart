import 'package:app_dentist/ui/pages/my_appointments/components/card_my_appointments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/shared/widgets/button_book_an_appointment.dart';

import 'package:app_dentist/ui/pages/my_appointments/controller/my_appointments_controller.dart';

class Upcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAppointmentsController>(
      init: MyAppointmentsController(),
      builder: (_) => Column(
        children: [
          CardMyAppointments(),
          CardMyAppointments(),
          CardMyAppointments(),
          CardMyAppointments(),
          CardMyAppointments(),
          ButtonBookAnAppointment(),
        ],
      ),
    );
  }
}
