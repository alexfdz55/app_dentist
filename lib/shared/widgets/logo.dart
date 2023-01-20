import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logo.svg',
      height: 55.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
