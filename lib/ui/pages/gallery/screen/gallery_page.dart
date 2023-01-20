import 'package:app_dentist/shared/widgets/header_weave.dart';
import 'package:app_dentist/shared/widgets/header_weave2.dart';
import 'package:app_dentist/shared/widgets/logo.dart';
import 'package:app_dentist/shared/widgets/page_headerWeave_logo.dart';
import 'package:app_dentist/ui/pages/gallery/components/card_photo.dart';
import 'package:app_dentist/ui/pages/gallery/components/grid_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dentist/ui/pages/gallery/controller/gallery_controller.dart';

class GalleryPage extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = Get.size;

    return GetBuilder<GalleryController>(
        init: GalleryController(),
        builder: (_) =>
            HeaderLogoPage(pageTitle: 'Gallery', body: GridImages()));
  }
}
