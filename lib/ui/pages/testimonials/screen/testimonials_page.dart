import 'package:app_dentist/ui/pages/testimonials/components/card_testimonials.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/testimonials/controller/home_controller.dart';

class TestimonialsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.width);
    return GetBuilder<TestimonialsController>(
      init: TestimonialsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Testimonials'),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () => Navigator.pushReplacement(
          //       context, MaterialPageRoute(builder: (context) => BottomBar())),
          // ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              CardTestimonials(),
            ],
          ),
        )),
      ),
    );
  }
}
