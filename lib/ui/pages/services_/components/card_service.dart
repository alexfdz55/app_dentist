import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/services_/controller/services_controller.dart';

class CardsServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServicesController>(
      init: ServicesController(),
      builder: (_) => Padding(
          padding: EdgeInsets.symmetric(horizontal: _.widthScreen * 0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _row1(),
              _row2(),
              _row3(),
            ],
          )),
    );
  }

  Widget _row1() {
    return CustomRow(
      children: [
        CardService(titleCard: 'Rountine Dental'),
        CardService(titleCard: 'Cosmetic Dental'),
        CardService(titleCard: 'Dental Implant'),
      ],
    );
  }

  Widget _row2() {
    return CustomRow(
      children: [
        CardService(titleCard: 'Denture'),
        CardService(titleCard: 'Almost Invisible'),
        CardService(titleCard: 'Teeth Whitening'),
      ],
    );
  }

  Widget _row3() {
    return CustomRow(
      children: [
        CardService(titleCard: 'Dental Emergency'),
      ],
    );
  }
}

class CustomRow extends StatelessWidget {
  final List<Widget> children;

  const CustomRow({this.children});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children);
  }
}

class CardService extends StatelessWidget {
  final String titleCard;
  CardService({this.titleCard});

  TextStyle styleSelect;
  TextStyle styleUnSelect;

  @override
  Widget build(BuildContext context) {
    styleUnSelect = TextStyle(
      color: Theme.of(context).primaryColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
    styleSelect = TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );

    return GetBuilder<ServicesController>(
      init: ServicesController(),
      id: 'card_service',
      builder: (_) =>
          //  Padding(
          // //  // padding: EdgeInsets.only(left: 35, right: 35),
          //   child:
          Card(
        child: MaterialButton(
          padding: EdgeInsets.all(0),
          minWidth: _.widthScreen * 0.25,
          child: Container(
            height: _.widthScreen * 0.25,
            width: _.widthScreen * 0.25,
            padding: EdgeInsets.symmetric(horizontal: 12),
            color: (_.listServices[titleCard])
                ? Theme.of(context).primaryColor
                : Colors.white,
            child: Center(
              child: Text(
                titleCard,
                style:
                    (_.listServices[titleCard]) ? styleSelect : styleUnSelect,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          onPressed: () {
            _.listServices[titleCard] = !_.listServices[titleCard];
            _.update(['card_service']);
          },
        ),
      ),
      // ),
    );
  }
}
