import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAnAppointmentController extends GetxController
    with SingleGetTickerProviderMixin {
  Map<DateTime, List> events;
  List selectedEvents;
  AnimationController animationController;
  CalendarController calendarController;

  @override
  void onInit() {
    super.onInit();
    final selectedDay = DateTime.now();

    events = {
      selectedDay.subtract(Duration(days: 30)): [
        'Event A0',
        'Event B0',
        'Event C0'
      ],
      selectedDay.subtract(Duration(days: 27)): ['Event A1'],
      selectedDay.subtract(Duration(days: 20)): [
        'Event A2',
        'Event B2',
        'Event C2',
        'Event D2'
      ],
    };

    selectedEvents = events[selectedDay] ?? [];
    calendarController = CalendarController();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    animationController.forward();
  }

  void onDaySelected(DateTime day, List events, List holidays) {
    print('CALLBACK: onDaySelected');
    selectedEvents = events;
    update();
  }

  void onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: onVisibleDaysChanged');
  }

  void onCalendarCreated(DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: onCalendarCreated');
  }

  List<String> listTimes = [
    '07:00 AM',
    '07:30 AM',
    '08:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
    '07:00 AM',
  ];

  List<bool> availablesTimes = [
    true,
    false,
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  final TextEditingController nameTextController = TextEditingController();

  final witdhScreen = Get.size.width;

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
    calendarController.dispose();
    super.dispose();
  }
}
