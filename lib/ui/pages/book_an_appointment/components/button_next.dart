import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: MaterialButton(
          shape: StadiumBorder(),
          color: Theme.of(context).primaryColor,
          child: Container(
              height: 45,
              child: Center(
                  child: Text('Next',
                      style: Theme.of(context).textTheme.headline4))),
          onPressed: () {
            //TODO: Next action
          }),
    );
  }
}
