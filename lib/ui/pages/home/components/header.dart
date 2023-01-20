import 'package:app_dentist/ui/pages/home/components/button.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Size sizeScreen;
  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;
    return Container(
      height: 205, //0.25 * sizeScreen.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        // color: Colors.blue,
      ),
      child: Stack(
        children: [
          Container(
            // height: 205,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              // color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/image_header.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Color(0xff2556AD)
                    .withOpacity(0.8) //Colors.blue.withOpacity(0.7),
                ),
          ),
          Positioned(
              top: 50,
              left: 0.5 * sizeScreen.width - 95 / 2,
              child: CircleAvatar(
                  radius: 95 / 2,
                  backgroundImage: AssetImage('assets/image_dr.png'))),
          Positioned(
              top: 156,
              left: 0.5 * sizeScreen.width - 45,
              child: Text(
                'Dr.Bijan Afar',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
