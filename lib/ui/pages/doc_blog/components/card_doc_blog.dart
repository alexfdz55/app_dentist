import 'package:app_dentist/ui/pages/doc_blog/components/image_toothbrush%20.dart';
import 'package:app_dentist/ui/pages/doc_blog/controller/doc_blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDocBlog extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;

    //anchoPantalla = MediaQuery.of(context).size.width;
    return GetBuilder<DocBlogController>(
      id: 'card_testimonials',
      init: DocBlogController(),
      builder: (_) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //       color: Colors.black26,
            //       blurRadius: 1.0,
            //       spreadRadius: 1.0,
            //       offset: Offset(1.0, 1.0))
            // ]
          ),
          //color: Colors.yellow,
          height: 160,
          child: Row(
            children: [
              ImageToothbrush(),
              _info(),
            ],
          )),
    );
  }

  Widget _info() {
    DocBlogController _ = Get.find<DocBlogController>();
    return Container(
      width: Get.size.width - (70 + 112),
      padding: EdgeInsets.only(left: 8, top: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Text(
              _.titleCard,
              style:
                  Theme.of(_context).textTheme.headline2.copyWith(fontSize: 13),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(_.dateCard,
                style: Theme.of(_context)
                    .textTheme
                    .headline5
                    .copyWith(fontSize: 11)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 13),
            child: Text(
              _.infoCard,
              style: Theme.of(_context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 113, top: 6),
            child: InkWell(
              child: Text('Read more',
                  style: Theme.of(_context)
                      .textTheme
                      .headline2
                      .copyWith(fontSize: 11)),
              onTap: () {
                print('object');
              },
            ),
          )
        ],
      ),
    );
  }

  // Widget _text() {
  //   return Container(
  //     //height: 150,
  //     //width: 180,
  //     //color: Colors.blue,
  //     padding: EdgeInsets.only(left: 8, top: 7),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.only(right: 5),
  //           child: Text(
  //             titleCard,
  //             style:
  //                 Theme.of(_context).textTheme.headline2.copyWith(fontSize: 13),
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(top: 3),
  //           child: Text(date,
  //               style: Theme.of(_context)
  //                   .textTheme
  //                   .headline5
  //                   .copyWith(fontSize: 11)),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(top: 10, right: 13),
  //           child: Text(
  //             info,
  //             style: Theme.of(_context).textTheme.headline6,
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(left: 113, top: 6),
  //           child: InkWell(
  //             child: Text('Read more',
  //                 style: Theme.of(_context)
  //                     .textTheme
  //                     .headline2
  //                     .copyWith(fontSize: 11)),
  //             onTap: () {
  //               print('object');
  //             },
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}

///
/////
///
///
