import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/phone.svg',
            height: 32.0,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(width: 12),
          Text('Call us', style: Theme.of(context).textTheme.headline2),
          SizedBox(width: 13),
          Text('(310) 286-9655', style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}
