import 'package:get/get.dart';
//import 'dart:convert';

// class InfoCardsBlogDoc {
//   List<InfoCardBlogDoc> items = new List();

//   InfoCardsBlogDoc();

//   InfoCardsBlogDoc.fromJsonList(List<dynamic> jsonList) {
//     if (jsonList == null) return;
//     for (var item in jsonList) {
//       final infoCardBlogDoc = new InfoCardBlogDoc.fromJsonMap(item);
//       items.add(infoCardBlogDoc);
//     }
//   }
// }

// class InfoCardBlogDoc {
//   String title;
//   String date;
//   String info;

//   InfoCardBlogDoc(this.title, this.date, this.info);
//   InfoCardBlogDoc.fromJsonMap(Map<String, dynamic> json) {
//     title = json['title'];
//     date = json['date'];
//     info = json['info'];
//   }
// }

class DocBlogController extends GetxController {
  String titleCard = 'Keeping your child\'s teeth healthy.';
  String dateCard = 'Yesterday';
  String infoCard =
      'What is the loop of Creation? How is there something from nothing?';

  final jsonListCard = {
    {
      'titleCard': 'Keeping your child\'s teeth healthy.',
      'dateCard': 'Today, 03:24 PM',
      'infoCard':
          'What is the loop of Creation? How is there something from nothing?',
    },
    {
      'titleCard': 'How often should i replace my toothbrush?',
      'dateCard': 'Yesterday',
      'infoCard':
          'I am looking for a chilled out roommate for a house on 17th floor of a XYZ appartment.',
    }
  };

  // final decodedData = json.decode(resp.body);

  //   final peliculas = new Peliculas.fromJsonList(decodedData['results']);

}
