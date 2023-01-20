import 'package:app_dentist/ui/pages/my_appointments/components/container_tabs.dart';
import 'package:app_dentist/ui/pages/my_appointments/components/past.dart';
import 'package:app_dentist/ui/pages/my_appointments/components/tabs.dart';
import 'package:app_dentist/ui/pages/my_appointments/components/tabs_.dart';
import 'package:app_dentist/ui/pages/my_appointments/components/upcoming.dart';
import 'package:app_dentist/ui/pages/my_appointments/controller/my_appointments_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // // return CalificacionesPersona();

    // return GetBuilder<MyAppointmentsController>(
    //   init: MyAppointmentsController(),
    //   builder: (_) => DefaultTabController(
    //     length: 2,
    //     child: Scaffold(
    //       appBar: AppBar(

    //         //backgroundColor: Colors.white,

    //         elevation: 1,
    //         title: Container(
    //             height: 60,
    //             // padding: EdgeInsets.only(left: 10),
    //             child: Text('Calificaciones de esta persona',
    //                 style: TextStyle(
    //                     fontSize: 18,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.black))),
    //         //backgroundColor: Colors.white,
    //         bottom: TabBar(

    //           controller: _.tabController,
    //           indicatorColor: Colors.blue,
    //           indicatorWeight: 10.0,
    //           indicatorPadding: EdgeInsets.symmetric(horizontal: 25),
    //           tabs: [
    //             Tab(
    //                 icon: Text(
    //               'Positivas',
    //             )),
    //             Tab(
    //                 icon: Text(
    //               'Negativas',
    //             )),
    //           ],
    //         ),
    //       ),
    //       body: TabBarView(
    //         children: [Container(), Container()],
    //       ),
    //     ),
    //   ),
    // );

    return GetBuilder<MyAppointmentsController>(
      init: MyAppointmentsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('My Appointments'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TabsAppoinments(),
              ContainerTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
