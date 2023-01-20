import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;

  const TextCustom({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 51),
      child: Text(text,
          style: Theme.of(context).textTheme.headline2.copyWith(fontSize: 12)),
    );
  }
}
