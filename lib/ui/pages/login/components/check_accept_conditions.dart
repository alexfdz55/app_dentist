import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';

class CheckAcceptConditions extends StatelessWidget {
  final BoxDecoration decoration =
      BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
    BoxShadow(
        color: Colors.black26,
        blurRadius: 3.0,
        spreadRadius: 1.0,
        offset: Offset(1.0, 3.0))
  ]);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      id: 'checkbox',
      init: LoginController(),
      builder: (_) => Padding(
        padding: EdgeInsets.only(top: 10, bottom: 25),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 0),
          shape: StadiumBorder(),
          minWidth: double.infinity,
          child: Row(
            children: [
              MaterialButton(
                shape: CircleBorder(),
                minWidth: 20,
                child: (_.isAcceptsCond)
                    ? checkBoxSelected(context)
                    : checkBoxUnselected(),
                onPressed: onPressed,
              ),
              //SizedBox(width: 10),
              Text(
                'I accept app terms and conditions',
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }

  void onPressed() {
    final _ = Get.find<LoginController>();
    _.isAcceptsCond = !_.isAcceptsCond;
    _.update(['checkbox']);
  }

  Widget checkBoxUnselected() {
    return Container(height: 20, width: 20, decoration: decoration);
  }

  Widget checkBoxSelected(BuildContext context) {
    return Stack(
      children: [
        Container(height: 20, width: 20, decoration: decoration),
        Positioned(
            top: 0,
            child: Icon(
              Icons.check,
              color: Theme.of(context).accentColor,
              size: 20,
            )),
      ],
    );
  }
}
