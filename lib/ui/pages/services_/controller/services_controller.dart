import 'package:get/get.dart';

class ServicesController extends GetxController {
  Map<String, bool> listServices = {
    'Rountine Dental': false,
    'Cosmetic Dental': true,
    'Dental Implant': false,
    'Denture': false,
    'Almost Invisible': false,
    'Teeth Whitening': false,
    'Dental Emergency': false,
  };

  final widthScreen = Get.size.width;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
