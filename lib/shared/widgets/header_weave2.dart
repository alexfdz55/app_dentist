import 'package:flutter/material.dart';

class HeaderWave2 extends StatelessWidget {
  final Color color;

  const HeaderWave2({this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWave2Painter(this.color),
      ),
    );
  }
}

class _HeaderWave2Painter extends CustomPainter {
  final Color color;

  _HeaderWave2Painter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //Propiedades
    lapiz.color = this.color; //Color(0xff615AAB)
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 10.0;

    final path = new Path();
    //Dibujar con el path y el lapiz

    // path.lineTo(0, size.height * 0.38);
    // path.quadraticBezierTo(size.width * 0.10, size.height * 0.18,
    //     size.width * 0.5, size.height * 0.25);
    // path.quadraticBezierTo(
    //     size.width * 0.99, size.height * 0.35, size.width, size.height * 0.18);
    // path.lineTo(size.width, 0);
    path.lineTo(0, size.height * (0.33));
    path.quadraticBezierTo(size.width * 0.05, size.height * (0.08),
        size.width * 0.5, size.height * (0.13));
    path.quadraticBezierTo(size.width * 0.99, size.height * (0.27), size.width,
        size.height * (0.18 / 2));
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
