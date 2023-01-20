import 'package:app_dentist/ui/pages/contact_us/controller/contact_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CajaComentarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final styleInput = Theme.of(context).textTheme.caption;

    return GetBuilder<ContactUsController>(
      init: ContactUsController(),
      builder: (_) => Card(
        elevation: 4,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: TextField(
            controller: _.messageTextController,
            minLines: 6,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            style: styleInput,
            decoration:
                InputDecoration(hintText: 'Message', border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
