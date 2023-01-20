import 'package:app_dentist/ui/pages/login/components/check_accept_conditions.dart';
import 'package:app_dentist/ui/pages/login/components/dialog_user_create.dart';
import 'package:app_dentist/ui/pages/login/components/textfield_custom.dart';
import 'package:get/get.dart';
import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final styleInput = Theme.of(context).textTheme.bodyText1;
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: SingleChildScrollView(
          child: Form(
            key: _.formKeyregister,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFieldCustom(
                  controller: _.emailTextController,
                  hintText: 'Email',
                  textValidation: 'Email required',
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextFieldCustom(
                  controller: _.phoneTextController,
                  hintText: 'Phone Number',
                  textValidation: 'Phone Number required',
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextFieldCustom(
                  controller: _.passwordTextController,
                  hintText: 'Create Password',
                  textValidation: 'Password required',
                  textInputType: TextInputType.text,
                  password: true,
                ),
                CheckAcceptConditions(),
                ButtonRegister(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => MaterialButton(
          shape: StadiumBorder(),
          color: Theme.of(context).primaryColor,
          child: Container(
              height: 45,
              child: Center(
                  child:
                      Text('Register', style: TextStyle(color: Colors.white)))),
          onPressed: () {
            dialogUserCreate(context);
          }),
    );
  }
}
