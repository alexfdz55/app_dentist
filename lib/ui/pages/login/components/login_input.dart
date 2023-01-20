import 'package:app_dentist/shared/widgets/custom_bottom_navigation/custom_bottom_bar.dart';

import 'package:app_dentist/ui/pages/home/screen/home_page.dart';
import 'package:app_dentist/ui/pages/login/components/textfield_custom.dart';
import 'package:get/get.dart';
import 'package:app_dentist/ui/pages/login/components/options_login.dart';
import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final styleInput = Theme.of(context).textTheme.bodyText1;
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: SingleChildScrollView(
          child: Form(
            key: _.formKeylogin,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFieldCustom(
                  controller: _.emailTextController,
                  hintText: 'Email',
                  textValidation: 'Email required',
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextFieldCustom(
                  controller: _.passwordTextController,
                  hintText: 'Password',
                  textValidation: 'Password required',
                  textInputType: TextInputType.text,
                  password: true,
                ),
                ButtonLogin(),
                OptionsLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Padding(
        padding: EdgeInsets.only(top: 44),
        child: MaterialButton(
            shape: StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: Container(
                height: 45,
                child: Center(
                    child: Text('Login',
                        style: TextStyle(color: Colors.white, fontSize: 15)))),
            onPressed: () {
              //TODO: Hacer login
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CustomBottomBar()));
              //Get.off(CustomBottomBar());
            }),
      ),
    );
  }
}
