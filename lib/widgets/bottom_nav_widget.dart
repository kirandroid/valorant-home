import 'package:flutter/material.dart';

class BottomNavWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width * 0.6998000, 0);
    path0.lineTo(size.width * 0.8002000, size.height);
    path0.lineTo(size.width, size.height);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
