import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/login/components/login_input.dart';
import 'package:app_dentist/ui/pages/login/components/register_input.dart';
import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';

class AnimatedContainerTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => AnimatedContainer(
        duration: Duration(milliseconds: 600),
        height: _.tabController.index == 0 ? 370 : 370,
        margin: EdgeInsets.symmetric(horizontal: (Get.size.width * 0.093)),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 0),
          curve: Curves.fastOutSlowIn,
          child: TabBarView(
            children: <Widget>[LoginInput(), RegisterInput()],
            controller: _.tabController,
          ),
        ),
      ),
    );
  }
}
