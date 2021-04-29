import 'package:flutter/material.dart';

class MoonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    LinearGradient gradient = LinearGradient(
        colors: [Color(0xff7c5038), Color(0xff7c5038).withOpacity(0)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0, 0.6]);
    paint.shader = gradient.createShader(Offset.zero & size);

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);
  }

  @override
  bool shouldRepaint(MoonPainter oldDelegate) => true;
}
