import 'package:app_dentist/ui/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionsLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _.tabController.index == 0 ? 'New user? ' : 'Register now',
            ),
            SizedBox(width: 10),
            GestureDetector(
              child: Text(
                _.tabController.index == 0 ? 'Register now' : 'New user?',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.red, fontWeight: FontWeight.normal),
              ),
              onTap: () {
                if (_.tabController.index == 0)
                  _.tabController.index = 1;
                else
                  _.tabController.index = 0;
              },
            ),
          ],
        ),
      ),
    );
  }
}
