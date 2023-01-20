import 'package:app_dentist/ui/pages/tabs/models/tab_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        iconSize: 20.0,
        //elevation: 30,
        //selectedItemColor: Colors.red,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).hintColor,
        //backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: <BottomNavigationBarItem>[
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              //backgroundColor: Colors.white,
              icon: tabItem.icon,
              title: tabItem.title,
            ),
        ],
      ),
    );
  }

  // Future<bool> _onWillPop() async {
  //   return (await showDialog(
  //         context: context,
  //         builder: (context) => new AlertDialog(
  //           elevation: 50,
  //           backgroundColor: Color.fromRGBO(0, 54, 101, 1.0),
  //           title: new Text('¿Seguro qué desea salir de la app?'),
  //           //content: new Text('Do you want to exit an App'),
  //           actions: <Widget>[
  //             new FlatButton(
  //               onPressed: () => Navigator.of(context).pop(false),
  //               child: new Text('No'),
  //             ),
  //             new FlatButton(
  //               onPressed: () => Navigator.of(context).pop(true),
  //               child: new Text('Sí'),
  //             ),
  //           ],
  //         ),
  //       )) ??
  //       false;
  // }
}
