import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_dentist/ui/pages/my_appointments/controller/my_appointments_controller.dart';

class TabsAppoinments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAppointmentsController>(
      init: MyAppointmentsController(),
      builder: (_) => Container(
        //color: Colors.yellow,
        height: 49,
        margin: EdgeInsets.only(bottom: 35),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                  height: 4,
                  width: Get.size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.grey.withOpacity(0.3),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(1.0, 2.0))
                      ]),
                )),
            TabBar(
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
              indicatorWeight: 5.0,
              unselectedLabelColor: Theme.of(context).hintColor,
              labelColor: Theme.of(context).errorColor,
              //indicatorColor: Theme.of(context).primaryColor,
              controller: _.tabController,
              tabs: _.programsTabs,
            ),
            Center(
                child: VerticalDivider(
              color: Theme.of(context).hintColor,
              width: 10.0,
              endIndent: 2,
              indent: 0,
              thickness: 2,
            )),
          ],
        ),
      ),
    );
  }
}
