import 'package:app_dentist/ui/pages/home/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

void dialogUserCreate(BuildContext context) {
  showDialog(
      barrierColor: Colors.blue.withOpacity(0.7),
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
          content: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                SvgPicture.asset(
                  'assets/check2.svg',
                  height: 55.0,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(height: 20),
                Text(
                  'User create',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
              child: Text(
                'OK',
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
          actionsPadding: EdgeInsets.symmetric(
              horizontal: 100), //TODO: Ajustar bien el boton OK en el centro
        );
      });
}
