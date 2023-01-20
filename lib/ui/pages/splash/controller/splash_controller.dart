import 'package:app_dentist/ui/pages/login/screen/login_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(LoginView());
    });
  }
}
