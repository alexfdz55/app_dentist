import 'package:app_dentist/shared/widgets/button_book_an_appointment.dart';
import 'package:app_dentist/shared/widgets/custom_bottom_navigation/custom_bottom_bar.dart';
import 'package:app_dentist/shared/widgets/logo.dart';

import 'package:app_dentist/ui/pages/about_us/screen/about_us_page.dart';
import 'package:app_dentist/ui/pages/availability/screen/availability_page.dart';
import 'package:app_dentist/ui/pages/contact_us/screen/contact_us_page.dart';
import 'package:app_dentist/ui/pages/doc_blog/screen/doc_blog_page.dart';
import 'package:app_dentist/ui/pages/gallery/screen/gallery_page.dart';
import 'package:app_dentist/ui/pages/home/components/header.dart';
import 'package:app_dentist/ui/pages/home/components/options_card.dart';
import 'package:app_dentist/ui/pages/home/controller/home_controller.dart';
import 'package:app_dentist/ui/pages/my_appointments/screen/my_appointments_page.dart';
import 'package:app_dentist/ui/pages/rech_us/screen/rech_us_page.dart';
import 'package:app_dentist/ui/pages/services_/screen/services_page.dart';
import 'package:app_dentist/ui/pages/testimonials/screen/testimonials_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// List<String> listOptions = [
//   'About us',
//   'Services',
//   'Appointment',
//   //---------
//   'Doc Blog',
//   'Testimonials',
//   'Gallery',
//   //----------
//   'Availability',
//   'Rache us',
//   'Contact us',
// ];

class HomePage extends StatelessWidget {
  List<OptionCard> listOptionsCards = [
    OptionCard(
      title: 'About us',
      page: CustomBottomBar(
        page2: AboutUsPage(),
        svgIconTitle2: 'About us',
      ),
      //AboutUsPage(),
    ),
    OptionCard(
      title: 'Services',
      page: CustomBottomBar(
        page4: ServicesPage(),
        svgIconTitle4: 'Services',
      ),
      //ServicesPage(),
    ),
    OptionCard(
      title: 'Appointment',
      page: CustomBottomBar(
        page2: MyAppointmentsPage(),
        svgIconTitle2: 'My Appointments',
      ),
      //MyAppointmentsPage(),
    ),
    //------------------------------
    OptionCard(
      title: 'Doc Blog',
      page: CustomBottomBar(
        page4: DocBlogPage(),
        svgIconTitle4: 'Doc Blog',
      ),
      //DocBlogPage(),
    ),
    OptionCard(
      title: 'Testimonials',
      page: CustomBottomBar(
        index: 1,
      ),
      //TestimonialsPage(),
    ),
    OptionCard(
      title: 'Gallery',
      page: CustomBottomBar(
        page2: GalleryPage(),
        svgIconTitle2: 'Gallery',
      ),
      //GalleryPage(),
    ),
    //-------------------------------
    OptionCard(
      title: 'Availability',
      page: CustomBottomBar(
        page2: AvailabilityPage(),
        svgIconTitle2: 'Availability',
      ),
      //AvailabilityPage(),
    ),
    OptionCard(
      title: 'Reach us',
      page: CustomBottomBar(
        index: 0,
      ),
      // RechUsPage(),
    ),
    OptionCard(
      title: 'Contact us',
      page: CustomBottomBar(
        index: 4,
      ),
      //ContactUsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) =>
          // WillPopScope(
          //   onWillPop: onWillPop,
          //   child:
          Scaffold(
        //  body: Center(child: listOptionsCards[1]),
        body: Stack(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: _.widthScreen * 0.1013, vertical: 40),
                  child: Column(
                    children: [
                      // SizedBox(height: 200),
                      LogoApp(),
                      SizedBox(height: 40),
                      options(),
                      SizedBox(height: 40),
                      ButtonBookAnAppointment()
                    ],
                  ),
                ),
              ),
            ),
            buttonBack(),
          ],
        ),
      ),
      //),
    );
  }

  Widget buttonBack() {
    return Positioned(
        top: 40,
        left: 15,
        child: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
          onPressed: () {
            print('back arrow button');
            //TODO: Navegar hacia la pagina anterior
          },
        ));
  }

  Future<bool> onWillPop() async {
    await print('back physic button');
    //TODO: Navegar hacia la pagina anterior al pulsar el boton fisico back
  }

  Widget options() {
    return Column(
      children: [
        row(0),
        SizedBox(height: 7),
        row(3),
        SizedBox(height: 7),
        row(6),
      ],
    );
  }

  Widget row(int i) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        listOptionsCards[i],
        listOptionsCards[i + 1],
        listOptionsCards[i + 2],
      ],
    );
  }
}
