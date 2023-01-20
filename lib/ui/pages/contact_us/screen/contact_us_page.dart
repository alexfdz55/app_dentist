import 'package:app_dentist/ui/pages/contact_us/components/button_send.dart';
import 'package:app_dentist/ui/pages/contact_us/components/card_message_input.dart';
import 'package:app_dentist/ui/pages/contact_us/components/contact.dart';
import 'package:app_dentist/ui/pages/contact_us/components/textfield_custom_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:app_dentist/shared/widgets/page_headerWeave_logo.dart';
import 'package:app_dentist/ui/pages/contact_us/controller/contact_us_controller.dart';

class ContactUsPage extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = Get.size;

    return GetBuilder<ContactUsController>(
        init: ContactUsController(),
        builder: (_) => HeaderLogoPage(
              pageTitle: 'Contact us',
              body: Padding(
                padding: EdgeInsets.only(top: 100),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 37, right: 37),
                    child: Column(
                      children: [
                        SizedBox(height: 70),
                        Contact(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 43, bottom: 24),
                          child: Text('Send your message',
                              style: Theme.of(context).textTheme.headline1),
                        ),
                        TextFieldCustomContact(
                          controller: _.nameTextController,
                          hintText: 'Full name',
                          textValidation: 'Full name required',
                          textInputType: TextInputType.name,
                          isName: true,
                        ),
                        SizedBox(height: 20),
                        TextFieldCustomContact(
                          controller: _.contactNumberTextController,
                          hintText: 'Contact number',
                          textValidation: 'Contact number required',
                          textInputType: TextInputType.number,
                        ),
                        // SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top: 20, bottom: 26),
                          child: CajaComentarios(),
                        ),
                        // SizedBox(height: 26),
                        ButtonSend(),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
