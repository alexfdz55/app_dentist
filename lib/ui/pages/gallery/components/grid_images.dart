import 'package:app_dentist/ui/pages/gallery/controller/gallery_controller.dart';
import 'package:flutter/material.dart';
import 'package:app_dentist/ui/pages/gallery/components/card_photo.dart';
import 'package:get/get.dart';

class GridImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GalleryController>(
      init: GalleryController(),
      builder: (_) => Padding(
        padding: EdgeInsets.only(left: 34, right: 34, top: 180),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 150 / 138,
              //crossAxisSpacing: 20,
              //mainAxisSpacing: 20,
            ),
            itemCount: _.imagesUrl.length,
            itemBuilder: (BuildContext ctx, index) {
              return CardPhoto(photoUrl: _.imagesUrl[index]);
            }),
      ),
    );
  }
}
