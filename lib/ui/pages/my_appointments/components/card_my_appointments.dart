import 'package:app_dentist/ui/pages/my_appointments/controller/my_appointments_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardMyAppointments extends StatelessWidget {
  BuildContext ctx;

  Size sizeScreen;

  @override
  Widget build(BuildContext context) {
    sizeScreen = MediaQuery.of(context).size;

    ctx = context;
    return GetBuilder<MyAppointmentsController>(
      init: MyAppointmentsController(),
      id: 'card_my_appointments',
      builder: (_) => Padding(
        padding: EdgeInsets.only(bottom: 22),
        child: Card(
          elevation: 2,
          child: Container(
            height: sizeScreen.height * 0.09 + 82.4,
            child: Row(
              children: [
                _date(),
                _verticalDivider(),
                _info(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _date() {
    return Container(
      //color: Colors.yellow,
      width: 76,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18, top: 31),
            child: Text('March', style: Theme.of(ctx).textTheme.bodyText2),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14),
            child: Text('08',
                style:
                    Theme.of(ctx).textTheme.headline1.copyWith(fontSize: 40)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('MON',
                style:
                    Theme.of(ctx).textTheme.bodyText2.copyWith(fontSize: 11)),
          ),
        ],
      ),
    );
  }

  Widget _verticalDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: VerticalDivider(
        thickness: 2.5,
      ),
    );
  }

  Widget _info() {
    return Container(
      width: sizeScreen.width - (170),
      //color: Colors.yellow,
      child: Column(
        children: [
          _info1(),
          _horizontalDivider(),
          _info2(),
        ],
      ),
    );
  }

  Widget _info1() {
    return Container(
      //width: 200,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Timing',
                  style:
                      Theme.of(ctx).textTheme.headline5.copyWith(fontSize: 13),
                ),
                Text(
                  '08:30 AM',
                  style:
                      Theme.of(ctx).textTheme.headline6.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 44),
                  child: Text(
                    'For',
                    style: Theme.of(ctx)
                        .textTheme
                        .headline5
                        .copyWith(fontSize: 13),
                  ),
                ),
                Text(
                  'Hjvhh',
                  style:
                      Theme.of(ctx).textTheme.headline6.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _horizontalDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Divider(
        thickness: 2.5,
      ),
    );
  }

  Widget _info2() {
    return Container(
      //color: Colors.grey,
      //width: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Appointment Type',
                  style:
                      Theme.of(ctx).textTheme.headline5.copyWith(fontSize: 13),
                ),
                Container(
                  // color: Colors.pink,
                  width: sizeScreen.width * 0.3,
                  child: Text(
                    'Dentures Over- Dentures',
                    style: Theme.of(ctx)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          //Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: MaterialButton(
              elevation: 4,
              padding: EdgeInsets.all(0),
              color: Colors.white,
              minWidth: sizeScreen.width * 0.157,
              height: 27,
              child: Text(
                'Option',
                style: Theme.of(ctx).textTheme.headline1.copyWith(fontSize: 11),
              ),
              onPressed: () {
                //TODO: option my appointment
              },
            ),
          ),
        ],
      ),
    );
  }
}
