import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String svg;
  final Color color;

  const SvgIcon({this.svg, this.color});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/bottom_bar/$svg.svg',
      height: 20.0,
      color: color,
    );
  }
}
