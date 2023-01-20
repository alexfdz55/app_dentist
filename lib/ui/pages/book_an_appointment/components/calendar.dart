import 'package:app_dentist/ui/pages/book_an_appointment/controller/book_an_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookAnAppointmentController>(
      init: BookAnAppointmentController(),
      builder: (_) => TableCalendar(
        calendarController: _.calendarController,
        // events: _events,
        //holidays: _holidays,
        startingDayOfWeek: StartingDayOfWeek.monday,
        // availableCalendarFormats: {
        //   CalendarFormat.month: '',
        //   CalendarFormat.week: '',
        // },

        // calendarStyle: CalendarStyle(
        //   selectedColor: Colors.deepOrange[400],
        //   todayColor: Colors.deepOrange[200],
        //   markersColor: Colors.brown[700],
        //   outsideDaysVisible: false,
        // ),
        headerStyle: HeaderStyle(
            leftChevronIcon: Icon(
              Icons.arrow_left,
              color: Theme.of(context).hintColor,
            ),
            rightChevronIcon: Icon(
              Icons.arrow_right,
              color: Theme.of(context).hintColor,
            ),
            centerHeaderTitle: true,
            formatButtonVisible: false,
            titleTextStyle:
                Theme.of(context).textTheme.headline2.copyWith(fontSize: 13)),
        initialCalendarFormat: CalendarFormat.week,
        onDaySelected: _.onDaySelected,
        onVisibleDaysChanged: _.onVisibleDaysChanged,
        onCalendarCreated: _.onCalendarCreated,
      ),
    );
  }
}
