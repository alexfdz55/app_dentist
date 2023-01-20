import 'package:flutter/material.dart';

class CardPhoto extends StatelessWidget {
  final String photoUrl;

  const CardPhoto({this.photoUrl});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.all(3.5),
    //   height: 150,
    //   width: 138,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
    //     //color: Colors.red,
    //     image: DecorationImage(image: AssetImage(photoUrl), fit: BoxFit.cover),
    //   ),
    // );
    return Container(
      margin: EdgeInsets.all(3.5),
      height: 138,
      width: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: FadeInImage(
          placeholder: AssetImage('assets/no_image.png'),
          image: NetworkImage(photoUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
