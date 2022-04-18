import 'dart:math';
import 'package:flutter/material.dart';

import '../../../../common/utils/colors.dart';


class ProgressCircle extends CustomPainter {
  int translationsNumber;
  double ringSize;
  ProgressCircle({required this.translationsNumber, required this.ringSize})
      : super();

  double strokeWidth = 22.0;

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..color = AppColors.primaryLight
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = ringSize;

    canvas.drawCircle(center, radius, circle);

    Paint translationsArcAnimation = Paint()
      ..color = AppColors.primary
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.stroke;

    double angle = 2 * pi * (translationsNumber / 100);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        angle, false, translationsArcAnimation);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
