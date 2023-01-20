import 'package:app_dentist/ui/pages/book_an_appointment/components/button_next.dart';
import 'package:app_dentist/ui/pages/book_an_appointment/components/card_time.dart';
import 'package:app_dentist/ui/pages/book_an_appointment/components/text_custom.dart';
import 'package:app_dentist/ui/pages/book_an_appointment/components/textfield_full_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/book_an_appointment/components/calendar.dart';
import 'package:app_dentist/ui/pages/book_an_appointment/controller/book_an_appointment_controller.dart';

class BookAnAppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookAnAppointmentController>(
      init: BookAnAppointmentController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Book an Appointment'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Calendar(),
              SizedBox(height: 20),
              TextCustom(text: 'Available time'),
              SizedBox(height: 22),
              CardsTimes(),
              SizedBox(height: 40),
              TextCustom(text: 'Appointment for...'),
              SizedBox(height: 13),
              TextFieldFullName(controller: _.nameTextController),
              SizedBox(height: 17),
              ButtonNext(),
            ],
          ),
        ),
      ),
    );
  }
}
