import 'package:flutter/material.dart';

class TextFieldFullName extends StatelessWidget {
  final TextEditingController controller;

  const TextFieldFullName({@required this.controller});

  @override
  Widget build(BuildContext context) {
    final styleInput = Theme.of(context).textTheme.caption;
    return Padding(
      padding: EdgeInsets.only(left: 38, right: 38),
      child: Container(
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
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              hintText: 'Full name',
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: InputBorder.none),
          validator: (value) =>
              value.trim().isEmpty ? 'Full name required' : null,
        ),
      ),
    );
  }
}
