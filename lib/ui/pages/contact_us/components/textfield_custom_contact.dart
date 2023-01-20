import 'package:flutter/material.dart';

class TextFieldCustomContact extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String textValidation;
  final TextInputType textInputType;
  final bool isName;

  const TextFieldCustomContact(
      {@required this.controller,
      @required this.hintText,
      @required this.textValidation,
      @required this.textInputType,
      this.isName = false});

  @override
  Widget build(BuildContext context) {
    final styleInput = Theme.of(context).textTheme.caption;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 2.0,
                spreadRadius: 1.0,
                offset: Offset(1.0, 2.0))
          ]),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: TextFormField(
        controller: controller,
        style: styleInput,
        keyboardType: textInputType,
        textCapitalization:
            (isName) ? TextCapitalization.sentences : TextCapitalization.none,
        decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            border: InputBorder.none),
        validator: (value) => value.trim().isEmpty ? 'Email required' : null,
      ),
    );
  }
}
