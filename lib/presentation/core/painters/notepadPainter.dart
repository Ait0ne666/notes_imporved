import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class NotepadPainter extends CustomPainter {
  final double animation;

  NotepadPainter({this.animation});

  @override
  void paint(Canvas canvas, Size size) {
    Paint notepadPaint = Paint();
    notepadPaint.color = Color(0xff363140).withOpacity(0.6);
    notepadPaint.style = PaintingStyle.fill;

    Path notepadPath = Path();

    var notepadOffset = Offset(0, size.height * 0.1);
    var notepadSize = Size(size.width, size.height * 0.9);

    Paint circlePaint = Paint();
    circlePaint.color = Color(0xff48485d);
    circlePaint.style = PaintingStyle.stroke;
    circlePaint.strokeWidth = 4;
    circlePaint.strokeCap = StrokeCap.round;

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            notepadOffset & notepadSize, Radius.circular(25)),
        notepadPaint);

    canvas.drawArc(
        Offset(size.width * 0.15, size.height * 0.1 - 7) & Size(14, 14),
        -1.3 * pi,
        1.24 * pi,
        false,
        circlePaint);
    canvas.drawArc(
        Offset(size.width * 0.3, size.height * 0.1 - 7) & Size(14, 14),
        -1.3 * pi,
        1.24 * pi,
        false,
        circlePaint);
    canvas.drawArc(
        Offset(size.width * 0.45, size.height * 0.1 - 7) & Size(14, 14),
        -1.3 * pi,
        1.24 * pi,
        false,
        circlePaint);
    canvas.drawArc(
        Offset(size.width * 0.6, size.height * 0.1 - 7) & Size(14, 14),
        -1.3 * pi,
        1.24 * pi,
        false,
        circlePaint);
    canvas.drawArc(
        Offset(size.width * 0.75, size.height * 0.1 - 7) & Size(14, 14),
        -1.3 * pi,
        1.24 * pi,
        false,
        circlePaint);

    circlePaint.strokeWidth = 15;

    canvas.drawLine(Offset(size.width * 0.22, size.height * 0.31),
        Offset(size.width * 0.78, size.height * 0.31), circlePaint);
    canvas.drawLine(Offset(size.width * 0.22, size.height * 0.47),
        Offset(size.width * 0.78, size.height * 0.47), circlePaint);
    canvas.drawLine(Offset(size.width * 0.22, size.height * 0.63),
        Offset(size.width * 0.78, size.height * 0.63), circlePaint);
    canvas.drawLine(Offset(size.width * 0.22, size.height * 0.79),
        Offset(size.width * 0.78, size.height * 0.79), circlePaint);
  }

  @override
  bool shouldRepaint(NotepadPainter oldDelegate) =>
      oldDelegate.animation != animation;
}
