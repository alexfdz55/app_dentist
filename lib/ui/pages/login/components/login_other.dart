import 'package:flutter/material.dart';

import 'package:sign_button/sign_button.dart';

class LoginOther extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignInButton.mini(
          buttonType: ButtonType.facebook,
          elevation: 0.0,
          btnColor: Colors.white,
          onPressed: () {},
        ),
        SignInButton.mini(
          elevation: 0.0,
          buttonType: ButtonType.google,
          btnColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
