import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String textValidation;
  final TextInputType textInputType;
  final bool password;

  const TextFieldCustom(
      {@required this.controller,
      @required this.hintText,
      @required this.textValidation,
      @required this.textInputType,
      this.password = false});

  @override
  Widget build(BuildContext context) {
    final styleInput = Theme.of(context).textTheme.bodyText2;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 4.0,
                spreadRadius: 1.0,
                offset: Offset(1.0, 4.0))
          ]),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: TextFormField(
        controller: controller,
        style: styleInput,
        keyboardType: textInputType,
        obscureText: password,
        decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            border: InputBorder.none),
        validator: (value) => value.trim().isEmpty ? 'Email required' : null,
      ),
    );
  }
}
