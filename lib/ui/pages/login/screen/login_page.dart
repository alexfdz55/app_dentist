import 'package:app_dentist/shared/widgets/header_weave.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/shared/widgets/logo.dart';
import 'package:app_dentist/ui/pages/login/components/animated_container_tabs.dart';
import 'package:app_dentist/ui/pages/login/components/button_forgotten_password.dart';

import 'package:app_dentist/ui/pages/login/components/options_login.dart';
import 'package:app_dentist/ui/pages/login/components/tabs.dart';
import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';

//import 'package:sueltaloya_app/shared/widgets/button_material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyForm());
  }
}

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Get.size);
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Scaffold(
        key: _.keyScaffold,
        body: Stack(
          children: [
            HeaderWave(),
            Padding(
              padding: EdgeInsets.only(top: Get.size.height * 0.095),
              child: ListView(
                children: <Widget>[
                  //SizedBox(height: 80),
                  LogoApp(),
                  SizedBox(height: 5),
                  TabsWidget(),
                  AnimatedContainerTabs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
