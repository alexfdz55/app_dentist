import 'package:app_dentist/shared/widgets/button_book_an_appointment.dart';
import 'package:flutter/material.dart';

import 'package:app_dentist/shared/widgets/page_headerWeave_logo.dart';
import 'package:app_dentist/ui/pages/availability/components/card_availablity.dart';

class AvailabilityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HeaderLogoPage(
      pageTitle: 'About us',
      //body: CardAvailability(),
      body: Padding(
        padding: EdgeInsets.only(top: 170),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 35, right: 35),
            child: Column(
              children: [
                CardAvailability(),
                SizedBox(height: 40),
                ButtonBookAnAppointment(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
