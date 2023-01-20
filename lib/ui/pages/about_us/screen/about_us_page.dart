import 'dart:ui';

import 'package:app_dentist/shared/widgets/page_headerWeave_logo.dart';
import 'package:app_dentist/ui/pages/about_us/components/card_about_us.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HeaderLogoPage(pageTitle: 'About us', body: CardAboutUs());
  }
}
