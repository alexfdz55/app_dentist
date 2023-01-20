import 'package:flutter/material.dart';

class ButtonForgottenPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 50),
      child: Center(
          child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {},
        child: Text(
          'Olvidaste tu Contraseña', //TODO TEXTO OLVIDASTE LA CONTRASENNA alinear a la derecha
          textAlign: TextAlign.right,
        ),
      )),
    );
  }
}
