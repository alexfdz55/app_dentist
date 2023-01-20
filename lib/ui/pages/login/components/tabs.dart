import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Container(
        //color: Colors.yellow,
        height: 30,
        //color: Colors.yellow,
        margin: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 35),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Container(
                    height: 5, width: 200, color: Theme.of(context).hintColor)),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
              indicatorWeight: 5.0,
              unselectedLabelColor: Theme.of(context).hintColor,
              labelColor: Theme.of(context).accentColor,
              indicatorColor: Theme.of(context).primaryColor,
              controller: _.tabController,
              tabs: _.programsTabs,
            ),
            Center(
                child: VerticalDivider(
              color: Theme.of(context).primaryColor,
              width: 10.0,
              endIndent: 8,
              indent: 4,
              thickness: 2,
            )),
          ],
        ),
      ),
    );
  }
}
