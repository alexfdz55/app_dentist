import 'package:app_dentist/ui/pages/testimonials/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardTestimonials extends StatelessWidget {
  final String personName;
  final String date;
  final String pathImagen;
  final String testimonials;

  CardTestimonials({
    this.personName = 'Person Name',
    this.date = 'Yesterday',
    this.pathImagen = 'assets/image_dr.png',
    this.testimonials =
        'What is the loop of Creation? How is there something from nothing? In spite of the fact that it is impossible to prove that anythin….',
  });

  //double anchoPantalla;

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;

    //anchoPantalla = MediaQuery.of(context).size.width;
    return GetBuilder<TestimonialsController>(
      id: 'card_testimonials',
      init: TestimonialsController(),
      builder: (_) => _card(),
    );
  }

  Widget _card() {
    return Card(
      child: Container(
          //color: Colors.yellow,
          //height: 150,
          child: Column(
        children: [
          _personData(),
          _testimonial(),
        ],
      )),
    );
  }

  Widget _personData() {
    return Container(
      height: 60,
      //color: Colors.blue,
      padding: EdgeInsets.only(left: 13, top: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          avatarPersona(pathImagen),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  personName,
                  style: Theme.of(_context).textTheme.bodyText1,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 5),
                child:
                    Text(date, style: Theme.of(_context).textTheme.headline5),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _testimonial() {
    return Container(
      padding: EdgeInsets.only(left: 52, right: 13, bottom: 13),
      child: Text(
        testimonials,
        style: Theme.of(_context).textTheme.headline6,
      ),
    );
  }
}

///
/////
///
///

Widget avatarPersona(String pathImagen) {
  return Container(
    //  color: Colors.red,
    width: 36,
    height: 36,
    child: Center(
      child: Container(
          width: 50,
          height: 50,
          child: CircleAvatar(backgroundImage: AssetImage(pathImagen))),
    ),
  );
}
