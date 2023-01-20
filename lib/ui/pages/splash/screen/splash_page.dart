import 'package:app_dentist/shared/widgets/header_weave.dart';
import 'package:app_dentist/shared/widgets/logo.dart';
import 'package:app_dentist/ui/pages/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            HeaderWave(color: Colors.white),
            Center(
              child: LogoApp(),
            )
          ],
        ),
      ),
    );
  }
}
