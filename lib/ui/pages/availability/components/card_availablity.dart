import 'package:flutter/material.dart';

class CardAvailability extends StatelessWidget {
  final TextStyle textStyle = TextStyle(
    color: Color(0xff161F3D).withOpacity(0.75),
    fontSize: 13,
  );

  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Card(
      //color: Colors.white,
      child: Container(
        height: 396,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 20),
                  CustomRowAvailability(day: 'Monday'),
                  CustomRowAvailability(day: 'Tuesday'),
                  CustomRowAvailability(day: 'Wednesday'),
                  CustomRowAvailability(day: 'Thursday'),
                  CustomRowAvailability(day: 'Friday'),
                  CustomRowAvailability(day: 'Saturday'),
                  CustomRowAvailability(day: 'Sunday'),
                  SizedBox(height: 10),
                  launchTime(),

                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'We are available on',
      style: Theme.of(ctx).textTheme.headline2.copyWith(fontSize: 15),
    );
  }

  Widget launchTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Lunch time',
          style: Theme.of(ctx).textTheme.headline2,
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 11),
        Text(
          '14:00hs Everyday',
          style: Theme.of(ctx).textTheme.headline5.copyWith(fontSize: 13),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

class CustomRowAvailability extends StatelessWidget {
  final String day;
  final String hor;

  CustomRowAvailability({@required this.day, this.hor = '07:00hs | 15:00hs'});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyleDay = Theme.of(context).textTheme.headline3;
    final TextStyle textStyleHor =
        Theme.of(context).textTheme.headline5.copyWith(fontSize: 13);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: textStyleDay,
            textAlign: TextAlign.left,
          ),
          //SizedBox(width: 100),
          Text(
            hor,
            style: textStyleHor,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
