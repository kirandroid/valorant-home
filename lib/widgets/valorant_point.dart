import 'package:flutter/material.dart';

class ValorantPoint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.5573333);
    path_0.lineTo(size.width * 0.3144167, size.height * 0.9166667);
    path_0.lineTo(size.width * 0.6745833, size.height * 0.9166667);
    path_0.lineTo(0, size.height * 0.1382917);
    path_0.close();
    path_0.moveTo(size.width * 0.5815000, size.height * 0.7083333);
    path_0.lineTo(size.width * 0.8972917, size.height * 0.7083333);
    path_0.lineTo(size.width, size.height * 0.5542917);
    path_0.lineTo(size.width, size.height * 0.1702500);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
