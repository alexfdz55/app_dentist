import 'package:flutter/material.dart';

class ButtonSend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: MaterialButton(
          shape: StadiumBorder(),
          color: Theme.of(context).primaryColor,
          child: Container(
              height: 45,
              child: Center(
                  child: Text('Send',
                      style: Theme.of(context).textTheme.headline4))),
          onPressed: () {
            //TODO: Send information
          }),
    );
  }
}
