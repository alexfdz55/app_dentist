import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgBottomBar extends StatelessWidget {
  final String title;

  const SvgBottomBar({this.title});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/bottom_bar/$title.svg',
      height: 30.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
