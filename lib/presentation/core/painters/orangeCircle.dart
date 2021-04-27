import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final Color startColor;
  final Color endColor;

  CirclePainter({this.endColor, this.startColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePaint = Paint();
    // circlePaint.color = Color(0xffe99e85).withOpacity(0.2);

    circlePaint.style = PaintingStyle.fill;

    LinearGradient gradient = LinearGradient(
        colors: [startColor.withOpacity(0.2), endColor.withOpacity(0.2)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);
    circlePaint.shader = gradient.createShader(Offset.zero & size);

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, circlePaint);
    gradient = LinearGradient(
        colors: [startColor.withOpacity(0.6), endColor.withOpacity(0.6)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);
    circlePaint.shader = gradient.createShader(Offset.zero & size);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width / 2 * 0.8, circlePaint);

    gradient = LinearGradient(
        colors: [startColor.withOpacity(0.8), endColor.withOpacity(0.8)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);
    circlePaint.shader = gradient.createShader(
        Offset(size.width * 0.2, size.height * 0.2) &
            Size(size.width * 0.5, size.height * 0.5));

    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width / 2 * 0.6, circlePaint);
    gradient = LinearGradient(
        colors: [startColor, endColor],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);
    circlePaint.shader = gradient.createShader(
        Offset(size.width * 0.3, size.height * 0.3) &
            Size(size.width * 0.3, size.height * 0.3));
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width / 2 * 0.4, circlePaint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;
}
