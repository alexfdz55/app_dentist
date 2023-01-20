import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with SingleGetTickerProviderMixin {
  static final LoginController _controller = LoginController.internal();

  LoginController.internal();

  GlobalKey<ScaffoldState> keyScaffold = new GlobalKey<ScaffoldState>();

  factory LoginController() => _controller;

  TabController tabController;

  var formKeylogin = GlobalKey<FormState>();

  var formKeyregister = GlobalKey<FormState>();

  bool isAuth = false;
  bool isLogin = true;

  bool isAcceptsCond = false;

  changeIsLogin() {
    isLogin = !isLogin;

    // Provider.of<ConvexProvider>(Get.overlayContext, listen: false)
    //     .change(value: !isLogin);
    // update(['login']);
  }

  final List<Tab> programsTabs = <Tab>[
    Tab(text: 'Sing in'),
    Tab(text: 'Sing up'),
  ];

  final phoneTextController = new TextEditingController();
  final emailTextController = new TextEditingController();
  final passwordTextController = new TextEditingController();

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: programsTabs.length)
      ..addListener(() {
        update();
      });

    //leerToken();
    super.onInit();
  }

  @override
  void onClose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
    tabController?.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
