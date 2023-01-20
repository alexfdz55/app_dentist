import 'package:flutter/material.dart';

class ImageToothbrush extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(3.5),
      height: 160,
      width: 112,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0), topLeft: Radius.circular(5.0)),
        child: FadeInImage(
          placeholder: AssetImage('assets/no_image.png'),
          image: AssetImage('assets/toothbrush.png'), //NetworkImage(photoUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
