import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: RaisedButton(child: Text('Button'), onPressed: () {}),
        // child: ButtonMaterial(
        //   text: _.tabController.index == 0
        //       ? 'Iniciar sesión'
        //       : 'Registrarse',
        //   onPressed: () {
        //     FocusScope.of(context).unfocus();
        //     if (_.tabController.index == 0) {
        //       if (_.formKeylogin.currentState.validate()) {
        //         _.apiLogin();
        //         // Get.find<ChatPageController>().connect();
        //       }
        //     } else if (_.tabController.index == 1) {
        //       if (_.formKeyregister.currentState.validate()) {
        //         _.apiRegister();
        //       }
        //     }
        //   },
        //   color: Colors.blue,
        //   colorText: Colors.white,
        //   height: 50,
        //   width: 250,
        // ),
      ),
    );
  }
}
