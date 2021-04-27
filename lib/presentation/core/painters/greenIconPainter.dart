import 'package:flutter/material.dart';

class GreenIconPainter extends CustomPainter {
  final double animation;

  GreenIconPainter({this.animation});

  @override
  void paint(Canvas canvas, Size size) {
    Paint mainPaint = Paint();
    mainPaint.color = Color(0xff56e4e0).withOpacity(0.2);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(0, 0) & Size(size.width, size.height), Radius.circular(16)),
        mainPaint);

    mainPaint.color = Color(0xff56e4e0).withOpacity(0.5);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(size.width * 0.1, size.height * 0.1) &
                Size(size.width * 0.8, size.height * 0.8),
            Radius.circular(12)),
        mainPaint);
    mainPaint.color = Color(0xff56e4e0);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(size.width * 0.2, size.height * 0.2) &
                Size(size.width * 0.6, size.height * 0.6),
            Radius.circular(8)),
        mainPaint);
  }

  @override
  bool shouldRepaint(GreenIconPainter oldDelegate) => false;
}
