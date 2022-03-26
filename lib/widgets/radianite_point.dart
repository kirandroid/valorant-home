import 'package:flutter/material.dart';

class RadianitePoint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0400000, size.height * 0.0100000);
    path0.cubicTo(
        size.width * 0.2709000,
        size.height * 0.0590000,
        size.width * 0.5223000,
        size.height * 0.0321000,
        size.width * 0.6900000,
        size.height * 0.0400000);
    path0.cubicTo(
        size.width * 0.7291000,
        size.height * 0.0400000,
        size.width * 0.9271000,
        size.height * 0.1234000,
        size.width * 0.9200000,
        size.height * 0.3300000);
    path0.quadraticBezierTo(size.width * 0.9076000, size.height * 0.5360000,
        size.width * 0.7300000, size.height * 0.6000000);
    path0.lineTo(size.width * 0.9300000, size.height * 0.9500000);
    path0.quadraticBezierTo(size.width * 0.7950000, size.height * 0.9645000,
        size.width * 0.7100000, size.height * 0.9000000);
    path0.quadraticBezierTo(size.width * 0.6700000, size.height * 0.8300000,
        size.width * 0.5500000, size.height * 0.6200000);
    path0.lineTo(size.width * 0.3200000, size.height * 0.6200000);
    path0.lineTo(size.width * 0.3200000, size.height * 0.9500000);
    path0.lineTo(size.width * 0.1400000, size.height * 0.9500000);
    path0.lineTo(size.width * 0.1400000, size.height * 0.4600000);
    path0.quadraticBezierTo(size.width * 0.5075000, size.height * 0.4525000,
        size.width * 0.6300000, size.height * 0.4500000);
    path0.cubicTo(
        size.width * 0.7443000,
        size.height * 0.4535000,
        size.width * 0.7810000,
        size.height * 0.2455000,
        size.width * 0.6300000,
        size.height * 0.2000000);
    path0.cubicTo(
        size.width * 0.5365000,
        size.height * 0.1970000,
        size.width * 0.3375000,
        size.height * 0.2000000,
        size.width * 0.2400000,
        size.height * 0.2000000);
    path0.cubicTo(
        size.width * 0.1630000,
        size.height * 0.1975000,
        size.width * 0.1001000,
        size.height * 0.1025000,
        size.width * 0.0400000,
        size.height * 0.0100000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
