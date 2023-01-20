import 'package:app_dentist/ui/pages/doc_blog/components/card_doc_blog.dart';
import 'package:flutter/material.dart';

class DocBlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Doc Blog'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
            child: Column(
              children: [CardDocBlog()],
            ),
          ),
        ));
  }
}
