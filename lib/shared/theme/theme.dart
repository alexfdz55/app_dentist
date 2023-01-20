import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
    canvasColor: Color(0xffF9F8F8), // Color del scaffold
    brightness: Brightness.light,
    primaryColor: Color(0xff2556AD), //Colors azul
    hintColor: Color(0xffA9A9A9), //COlor opaco
    accentColor: Color(0xff5692FF), //Color azul claro
    errorColor: Color(0xffE94040),

    // Color rojo
    textTheme: TextTheme(
      bodyText1:
          TextStyle(color: Color(0xff161F3D), fontSize: 11), //Texto mas oscuro
      bodyText2:
          TextStyle(color: Color(0xffA9A9A9), fontSize: 14), //Texto opaco
      headline1: TextStyle(
          color: Color(0xff2556AD),
          fontSize: 15,
          fontWeight: FontWeight.bold), //Texto Azul
      headline2: TextStyle(
          color: Color(0xff2556AD), fontSize: 14, fontWeight: FontWeight.bold),
      headline3: TextStyle(
          color: Color(0xff161F3D), fontSize: 14, fontWeight: FontWeight.bold),
      // TextStyle(
      //   color: Color(0xffE94040),
      //   fontSize: 14,
      // ),
      //Textos de las cards Testimonials
      headline4: TextStyle(color: Colors.white, fontSize: 15),
      headline5: TextStyle(
          color: Color(0xff161F3D).withOpacity(0.4),
          fontSize: 8), //Texto mas oscuro - fuente 8
      headline6: TextStyle(
          color: Color(0xff161F3D).withOpacity(0.75),
          fontSize: 13), //Texto card Testimonials

      caption: TextStyle(color: Color(0xff161F3D), fontSize: 14),
    ));
