import 'package:app_dentist/ui/pages/book_an_appointment/controller/book_an_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsTimes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookAnAppointmentController>(
      init: BookAnAppointmentController(),
      builder: (_) => Padding(
        padding: EdgeInsets.symmetric(horizontal: _.witdhScreen * 0.12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _cardsAvailableTimes()),
      ),
    );
  }

  List<Widget> _cardsAvailableTimes() {
    BookAnAppointmentController _ = Get.find<BookAnAppointmentController>();

    List<Widget> cards = [];
    int i = 0;
    do {
      cards.add(
        _row(index1: i, index2: i + 1, index3: i + 2),
      );
      i += 3;
    } while (i <= _.listTimes.length - 3);
    return cards;
  }

  Widget _row({int index1, int index2, int index3}) {
    return CustomRow(
      children: [
        CardTime(index: index1),
        CardTime(index: index2),
        CardTime(index: index3),
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

class CardTime extends StatelessWidget {
  final int index;
  CardTime({this.index});

  TextStyle styleSelect;
  TextStyle styleUnSelect;

  @override
  Widget build(BuildContext context) {
    styleUnSelect =
        Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 11);
    styleSelect = TextStyle(
        color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold);

    return GetBuilder<BookAnAppointmentController>(
      init: BookAnAppointmentController(),
      builder: (_) => Card(
        child: Container(
          height: 45,
          width: _.witdhScreen * 0.23,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: (_.availablesTimes[index])
                ? Theme.of(context).primaryColor
                : Colors.white,
          ),
          child: Center(
            child: Text(
              _.listTimes[index],
              style: (_.availablesTimes[index]) ? styleSelect : styleUnSelect,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
