import 'package:app_dentist/shared/widgets/custom_bottom_navigation/custom_bottom_bar.dart';
import 'package:app_dentist/ui/pages/book_an_appointment/screen/book_an_appointment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonBookAnAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: MaterialButton(
        shape: StadiumBorder(),
        color: Theme.of(context).primaryColor,
        child: Container(
            height: 45,
            child: Center(
                child: Text('Book an appointment',
                    style: Theme.of(context).textTheme.headline4))),
        // onPressed: () =>
        //     Get.to(BookAnAppointmentPage(), transition: Transition.leftToRight),
        onPressed: () => Get.to(
            CustomBottomBar(
              page2: BookAnAppointmentPage(),
              svgIconTitle2: 'Book an appointment',
            ),
            transition: Transition.leftToRight),
      ),
    );
  }
}
