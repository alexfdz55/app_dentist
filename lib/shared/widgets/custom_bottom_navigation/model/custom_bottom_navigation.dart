import 'package:app_dentist/shared/widgets/custom_bottom_navigation/items/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

const Color PRIMARY_COLOR = Colors.blueAccent;
const Color BACKGROUND_COLOR = Color(0xffE2E7F2);

class CustomBottomNavigationBar extends StatefulWidget {
  final Color backgroundColor;
  final Color itemColor;
  final List<CustomBottomNavigationItem> children;
  final Function(int) onChange;
  final int currentIndex;

  CustomBottomNavigationBar(
      {this.backgroundColor = BACKGROUND_COLOR,
      this.itemColor = PRIMARY_COLOR,
      this.currentIndex = 0,
      @required this.children,
      this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void _changeIndex(int index) {
    if (widget.onChange != null) {
      widget.onChange(index);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: widget.backgroundColor, boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black26,
            blurRadius: 1.0,
            spreadRadius: 4.0,
            offset: Offset(4.0, 1.0))
      ]),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.children.map((item) {
          var color = item.color ?? widget.itemColor;
          var icon = item.icon;
          var label = item.label;
          int index = widget.children.indexOf(item);
          return InkWell(
            onTap: () {
              _changeIndex(index);
            },
            child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width:
                    MediaQuery.of(context).size.width / widget.children.length,
                child: Column(
                  children: [
                    (index == widget.currentIndex)
                        ? line(color)
                        // : (widget.currentIndex != index && index == 2)
                        //     ? SizedBox(height: 5)
                        : Container(), //SizedBox(height: 15),
                    (index == 2) ? SizedBox(height: 0) : SizedBox(height: 15),
                    (widget.currentIndex != index && index == 2)
                        ? SizedBox(height: 0)
                        : SizedBox(height: 0),

                    SizedBox(height: 8),
                    icon,
                  ],
                )),
          );
        }).toList(),
      ),
    );
  }

  Widget line(Color color) {
    return Container(
      // padding: EdgeInsets.only(top: 10),
      height: 4,
      width: 60,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0))),
    );
  }

  // Widget itemWidget(int index) {
  //   if (widget.currentIndex == index) {
  //     print('1');
  //     return Container(
  //       // padding: EdgeInsets.only(top: 10),
  //       height: 4,
  //       width: 60,
  //       decoration: BoxDecoration(
  //           //color: color,
  //           borderRadius: BorderRadius.only(
  //               bottomRight: Radius.circular(20.0),
  //               bottomLeft: Radius.circular(20.0))),
  //     );
  //   } else if (widget.currentIndex != index && index == 2) {
  //     print('2');
  //     return SizedBox(height: 15);
  //   } else {
  //     print('3');
  //     return SizedBox(height: 15);
  //   }
  // }
}
