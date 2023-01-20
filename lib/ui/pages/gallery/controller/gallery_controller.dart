import 'package:get/get.dart';
// import 'package:app_dentist/ui/pages/gallery/components/card_photo.dart';

class GalleryController extends GetxController {
  int numImages = 11;

  // List<Map> imagesUrl;
  //  =
  //     List.generate(11, (index) => {"id": index, "name": "Product $index"})
  //         .toList();

  List<String> imagesUrl;

  @override
  void onInit() {
    super.onInit();
    imagesUrl = [
      'https://gacetadental.com/wp-content/uploads/2019/09/dentista-paciente-1280x720.jpg',
      'https://gacetadental.com/wp-content/uploads/2020/04/Clinica_dental.jpg',
      'https://as.com/deporteyvida/imagenes/2018/03/16/portada/1521222830_942594_1521222954_noticia_normal.jpg',
      'https://statics-cuidateplus.marca.com/sites/default/files/styles/natural/public/dentista-infantil.jpg',
      'https://gacetadental.com/wp-content/uploads/2019/09/dentista-paciente-1280x720.jpg',
    ];
  }
}
