import 'dart:math' as math;
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';

class DottedBorderPainterWidget extends CustomPainter {
  DottedBorderPainterWidget({
    this.width = strokeWidth,
    this.color = grey1,
    this.gap = 5.0,
    this.left = true,
    this.right = true,
    this.top = true,
    this.bottom = true,
  });

  final double width;
  final Color color;
  final double gap;
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;

  @override
  void paint(Canvas canvas, Size size) {
    Paint dashedPaint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;

    final x = size.width;
    final y = size.height;

    final topPath = getDashedPath(
      a: const math.Point(0, 0),
      b: math.Point(x, 0),
      gap: gap,
    );

    final rightPath = getDashedPath(
      a: math.Point(x, 0),
      b: math.Point(x, y),
      gap: gap,
    );

    final bottomPath = getDashedPath(
      a: math.Point(0, y),
      b: math.Point(x, y),
      gap: gap,
    );

    final leftPath = getDashedPath(
      a: const math.Point(0, 0),
      b: math.Point(0.001, y),
      gap: gap,
    );

    if (top) {
      canvas.drawPath(topPath, dashedPaint);
    }
    if (right) {
      canvas.drawPath(rightPath, dashedPaint);
    }
    if (bottom) {
      canvas.drawPath(bottomPath, dashedPaint);
    }
    if (left) {
      canvas.drawPath(leftPath, dashedPaint);
    }
  }

  Path getDashedPath({
    required math.Point<double> a,
    required math.Point<double> b,
    required gap,
  }) {
    final size = Size(b.x - a.x, b.y - a.y);
    final path = Path();
    path.moveTo(a.x, a.y);
    bool shouldDraw = true;
    math.Point currentPoint = math.Point(a.x, a.y);

    final radians = math.atan(size.height / size.width);

    final dx = math.cos(radians) * gap < 0
        ? math.cos(radians) * gap * -1
        : math.cos(radians) * gap;

    final dy = math.sin(radians) * gap < 0
        ? math.sin(radians) * gap * -1
        : math.sin(radians) * gap;

    while (currentPoint.x <= b.x && currentPoint.y <= b.y) {
      shouldDraw
          ? path.lineTo(currentPoint.x.toDouble(), currentPoint.y.toDouble())
          : path.moveTo(currentPoint.x.toDouble(), currentPoint.y.toDouble());
      shouldDraw = !shouldDraw;
      currentPoint = math.Point(
        currentPoint.x + dx,
        currentPoint.y + dy,
      );
    }
    return path;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
