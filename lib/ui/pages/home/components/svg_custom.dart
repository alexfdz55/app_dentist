import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgCustom extends StatelessWidget {
  final String title;

  const SvgCustom({this.title});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/opciones_home_page/$title.svg',
      height: 50.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
