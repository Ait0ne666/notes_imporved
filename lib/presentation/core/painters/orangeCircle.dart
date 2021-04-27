import 'package:flutter/material.dart';

class OrangeCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePaint = Paint();
    circlePaint.color = Color(0xffe99e85).withOpacity(0.2);
    circlePaint.style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, circlePaint);
    circlePaint.color = Color(0xffe99e85).withOpacity(0.6);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width / 2 * 0.8, circlePaint);
    circlePaint.color = Color(0xffe99e85).withOpacity(0.8);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width / 2 * 0.6, circlePaint);
    circlePaint.color = Color(0xffe99e85);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width / 2 * 0.4, circlePaint);
  }

  @override
  bool shouldRepaint(OrangeCirclePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(OrangeCirclePainter oldDelegate) => false;
}
