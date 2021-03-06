import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SquareIconPainter extends CustomPainter {
  final double animation;
  final Color startColor;
  final Color endColor;
  final ui.Image image;

  SquareIconPainter(
      {this.animation, this.startColor, this.endColor, this.image});

  @override
  void paint(Canvas canvas, Size size) {
    Paint mainPaint = Paint();
    // mainPaint.color = startColor.withOpacity(0.2);
    LinearGradient gradient = LinearGradient(
        colors: [startColor.withOpacity(0.2), endColor.withOpacity(0.2)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);

    mainPaint.shader =
        gradient.createShader(Offset(0, 0) & Size(size.width, size.height));

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(0, 0) & Size(size.width, size.height), Radius.circular(16)),
        mainPaint);
    gradient = LinearGradient(
        colors: [startColor.withOpacity(0.5), endColor.withOpacity(0.5)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);

    mainPaint.shader =
        gradient.createShader(Offset(0, 0) & Size(size.width, size.height));
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(size.width * 0.1, size.height * 0.1) &
                Size(size.width * 0.8, size.height * 0.8),
            Radius.circular(12)),
        mainPaint);
    gradient = LinearGradient(
        colors: [startColor, endColor],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);

    mainPaint.shader =
        gradient.createShader(Offset(0, 0) & Size(size.width, size.height));

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(size.width * 0.2, size.height * 0.2) &
                Size(size.width * 0.6, size.height * 0.6),
            Radius.circular(8)),
        mainPaint);

    if (image != null) {
      Paint imagePaint = Paint()..color = Colors.white;

      canvas.drawImageRect(
          image,
          Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
          Rect.fromLTWH(
              size.width / 2 - size.width * 0.35 / 2,
              size.height / 2 - size.height * 0.35 / 2,
              size.width * 0.35,
              size.height * 0.35),
          imagePaint);
    }
  }

  @override
  bool shouldRepaint(SquareIconPainter oldDelegate) => false;
}
